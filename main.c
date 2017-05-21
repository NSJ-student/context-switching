#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <fcntl.h>
#include <sys\stat.h>
#include <sys\types.h>
#include <windows.h>

#define CMD_SIZE		20
#define MAX_PRG_SIZE	(64*1024)
#define MEM_SIZE		(MAX_PRG_SIZE*2)
#define SECTION_SIZE	512
#define MASK_CODE	0xFFFF0000		// code 영역의 주소를 만들어내는 mask

#define DATA_STR	".data"
#define TEXT_STR	".text"
#define LOAD_ON		1
#define LOAD_OFF		0


typedef struct {
	unsigned int eip;
	unsigned int efl;
	unsigned int edi;
	unsigned int esi;
	unsigned int ebp;
	unsigned int esp;
	unsigned int ebx;
	unsigned int edx;
	unsigned int ecx;
	unsigned int eax;
} Context;

typedef struct {
	char * cpCmd;
	void (* fp) (void);
} Comm;

void Print_R(void);
void Print_Help(void);
void Memory_Clear(void);
void Memory_Modify(void);
void Memory_Display(void);
void View_Code(void);
void View_Data(void);
void View_Stack(void);
void Load(void);
void Go(void);
void Quit(void);

void STST(Context *);
void LDST(Context *);
void Hexa_View(const void *vp, unsigned int uilen);
 void Stack_View(const void *vp, unsigned int uilen);

static Context stOldState;
static Comm stCmdMap[] = 		
	{
			{ "R", Print_R },
			{ "H", Print_Help },
			{ "MC", Memory_Clear },
			{ "MM", Memory_Modify },
			{ "MD", Memory_Display },
			{ "CODE", View_Code },
			{ "DATA", View_Data },
			{ "STACK", View_Stack },
			{ "LOAD", Load },
			{ "GO", Go },
			{ "Q", Quit },
			{ "QUIT", Quit },
			{ 0, 0 }
	};

void * vpMem_Start;
void * vpMem_End;
void * vpCode;
void * vpData;
void * vpStack;
unsigned int uiLoad;

//////////////////////////////////////////////////////////////////////

int main(void)
{
	char cInput[CMD_SIZE];
	int iRet;
	int i;
	Comm * stpCmd;


	vpMem_Start = (void *)malloc(MEM_SIZE);
	if( 0 == vpMem_Start)
	{
		printf("mallod fail...\n");
		return 0;
	}
	vpMem_End = (void *)((int)vpMem_Start+MEM_SIZE-1);
	vpCode = (void *)((((int)vpMem_Start)&MASK_CODE)+MAX_PRG_SIZE);
	vpData = (void *)( (int)vpCode+0x2000 );
	vpStack = (void *)( (int)vpMem_End+1);

	uiLoad = LOAD_OFF;

	printf("vpMem_Start: 0x%08X\n", vpMem_Start);
	printf("vpMem_End  : 0x%08X\n", vpMem_End);
	printf("vpCode     : 0x%08X\n", vpCode);
	printf("Size       : %d KB\n", ((int)vpMem_End - (int)vpMem_Start +1)/1024);

	
	STST(&stOldState);
	printf("Monitor Program Start...\n");

	while(1)
	{
		putchar('>');			// prompt 출력
		iRet = read(0, cInput, CMD_SIZE);
		if( 1 == iRet )
		{
			continue;	// enter치면 prompt가 출력됨
		}
		cInput[iRet-1] = 0;

		stpCmd = stCmdMap;

		for(i = 0; cInput[i] != 0; i++)
		{
			cInput[i] = toupper(cInput[i]);
		}
		while( 0 != (stpCmd->fp) )
		{
			if( 0 == strcmp(cInput, stpCmd->cpCmd) )
			{
				break;
			}
			++stpCmd;
		}
		
		if( 0 != (stpCmd->fp) )		// 일치하는 명령어가 존재
		{
			(stpCmd->fp)();	// 함수 호출
		}
		else
		{
			Print_Help();
		}
		
	}

	return 0;
}

void Print_R(void)
{
	printf("========================== Register Status ==========================\n");
	printf("EAX: 0x%08X   EBX: 0x%08X   ECX: 0x%08X   EDX: 0x%08X\n"
		, stOldState.eax, stOldState.ebx, stOldState.ecx, stOldState.edx);
	printf("ESI: 0x%08X   EDI: 0x%08X   ESP: 0x%08X   EBP: 0x%08X\n"
		, stOldState.esi, stOldState.edi, stOldState.esp, stOldState.ebp);
	printf("EIP: 0x%08X   EFL: 0x%08X\n\n", stOldState.eip, stOldState.efl);

	return;
}

void Print_Help(void)
{
	printf("R       : Print Register Status\n");
	printf("MC      : Memory Clear\n");
	printf("MM      : Memory Modify\n");
	printf("MD      : Memory Display\n");
	printf("LOAD    : Program Load\n");
	printf("CODE    : Code Area Display\n");
	printf("DATA    : Data Area Display\n");
	printf("STACK   : Stack Area Display\n");
	printf("GO      : Program Start\n");
	printf("H       : Print Command List\n");
	printf("Quit(Q) : Exit Program\n");

	return;
}

void Memory_Clear(void)
{
	memset(vpMem_Start, 0x00, MEM_SIZE);
	printf("Memory Clear Complete\n");
	
	return;
}

void Memory_Modify(void)
{
	unsigned int uiAddr;
	unsigned int uiVar;

	while(1)
	{
		printf("메모리 주소를 입력하세요(0x%08X ~ 0x%08X): ", vpMem_Start, vpMem_End);
		scanf("%X", &uiAddr);
		fflush(stdin);

		if( uiAddr < (unsigned int)vpMem_Start )
		{
			printf(" -- Error\n");
			continue;
		}
		if( uiAddr > (unsigned int)vpMem_End )
		{
			printf(" -- Error\n");
			continue;
		}

		break;
	}

	Hexa_View((void *)uiAddr, 16);

	printf("수정할 값(16진수): ");
	scanf("%X", &uiVar);
	fflush(stdin);

	*((unsigned int *)uiAddr) = uiVar;
	
	Hexa_View((void *)uiAddr, 16);
	
	return;
}

void Memory_Display(void)
{
	unsigned int uiAddr;

	while(1)
	{
		printf("메모리 주소를 입력하세요(0x%08X ~ 0x%08X): ", vpMem_Start, vpMem_End);
		scanf("%X", &uiAddr);
		fflush(stdin);

		if( uiAddr < (unsigned int)vpMem_Start )
		{
			printf(" -- Error\n");
			continue;
		}
		if( uiAddr > (unsigned int)vpMem_End )
		{
			printf(" -- Error\n");
			continue;
		}

		break;
	}

	Hexa_View((void *)uiAddr, 16*10);

	return;
}

void Go(void)
{
	Context stTmpState;

	if( LOAD_OFF== uiLoad )
	{
		printf("적재된 프로그램이 없습니다\n");
		return;
	}
	memset(&stTmpState, 0x00, sizeof(Context));

	stTmpState.esp = (unsigned int)vpStack;
	stTmpState.eip = (unsigned int)vpCode;
	stTmpState.eax = (unsigned int)(&stOldState);

	LDST(&stTmpState);
	printf("System Panic\n");

	return;
}

void Load(void)
{
	int iFd;
	int iRet;
	char cBuf[CMD_SIZE];
	IMAGE_DOS_HEADER * stpDosH;
	IMAGE_NT_HEADERS * stpNtH;
	IMAGE_SECTION_HEADER stSecH;
	int iSH;
	int iNumOfSec, i;
	void * vpTmp;

	Memory_Clear();
	
	printf("읽어들일 파일명을 입력하세요:: ");
	iRet = read(0, cBuf, CMD_SIZE);
	if(iRet == 1)
	{
		return;
	}
	cBuf[iRet-1] = 0;

	iFd = open(cBuf, O_RDONLY|O_BINARY);
	if(iFd < 0)
	{
		printf("[%s]를 열 수 없습니다\n", cBuf);
		return;
	}

	iRet = read(iFd, vpMem_Start, sizeof(IMAGE_DOS_HEADER)+sizeof(IMAGE_NT_HEADERS));
	if(iRet < 0)
	{
		Memory_Clear();
		close(iFd);
		printf("[%s]를 읽을 수 없습니다\n", cBuf);
		return;
	}
	
	stpDosH = (IMAGE_DOS_HEADER *)vpMem_Start;
	stpNtH = (IMAGE_NT_HEADERS *)((int)vpMem_Start + stpDosH->e_lfanew);
	
	iSH = stpDosH->e_lfanew + sizeof(stpNtH->Signature) + sizeof(stpNtH->FileHeader) 
		+ (stpNtH->FileHeader).SizeOfOptionalHeader;
	iNumOfSec = (stpNtH->FileHeader).NumberOfSections;
	
	for(i = 0; i<iNumOfSec; i++)
	{	
		///////////////////// SECTION 가져오기 //////////////////////
		iRet = lseek(iFd, iSH + i*(sizeof(IMAGE_SECTION_HEADER)), SEEK_SET);
		if(iRet < 0)
		{
			Memory_Clear();
			close(iFd);
			printf("프로그램 적재 실패\n", cBuf);
			return;
		}
		
		iRet = read(iFd, &stSecH, sizeof(IMAGE_SECTION_HEADER));
		if(iRet < 0)
		{
			Memory_Clear();
			close(iFd);
			printf("[%s]를 읽을 수 없습니다\n", cBuf);
			return;
		}
		///////////////////// SECTION 식별 //////////////////////
		if( 0 == strncmp( DATA_STR, stSecH.Name, 5) )
		{
			vpTmp = vpData;
		}
		else if( 0 == strncmp( TEXT_STR, stSecH.Name, 5) )
		{
			vpTmp = vpCode;
		}
		else
		{
			continue;
		}
		///////////////////// SECTION 데이터 읽어오기 //////////////////////
		iRet = lseek(iFd, stSecH.PointerToRawData, SEEK_SET);
		if(iRet < 0)
		{
			Memory_Clear();
			close(iFd);
			printf("프로그램 적재 실패\n", cBuf);
			return;
		}
		iRet = read(iFd, vpTmp, SECTION_SIZE);
		if(iRet < 0)
		{
			Memory_Clear();
			close(iFd);
			printf("[%s]를 읽을 수 없습니다\n", cBuf);
			return;
		}
		///////////////////// 데이터 적재 완료 메시지 //////////////////////
		if(iRet != 0)
		{
			printf("[%s] 적재 완료\n", stSecH.Name);
		}
		else
		{
			printf("[%s]이 존재하지 않습니다\n", stSecH.Name);
		}
	}

	close(iFd);
	
	uiLoad = LOAD_ON;
	
	return;
}

void View_Code(void)
{
	Hexa_View(vpCode, 16*16);

	return;
}

void View_Data(void)
{
	Hexa_View(vpData, 16*16);

	return;
}

void View_Stack(void)
{
	Stack_View(vpStack, 6);

	return;
}

void Quit(void)
{
	free(vpMem_Start);
	exit(0);
}

 void Hexa_View(const void *vp, unsigned int uilen)
{
	unsigned int uiCnt;
	unsigned int uiLine;

	printf("===============================================================================\n");
	printf(" Address                           Hexa                              ASCII\n");
	printf("-------------------------------------------------------------------------------\n");

	for (uiLine = 0; uiLine < uilen; uiLine = uiLine + 16)
	{
		printf(" 0x%08X  ", vp);

		for (uiCnt = 0; uiCnt < 16; ++uiCnt)
		{
			printf("%02X ", *((unsigned char *)vp));
			vp = (char *)vp + 1;
			if (uiCnt == 7) putchar(' ');
		}
		vp = (char *)vp - 16;

		putchar(' ');
		for (uiCnt = 0; uiCnt < 16; ++uiCnt)
		{
			if (32 > *((unsigned char *)vp))
			{
				putchar('.');
			}
			else if (127 < *((unsigned char *)vp))
			{
				putchar('.');
			}
			else
			{
				printf("%c", *((unsigned char *)vp));
			}

			vp = (char *)vp + 1;
		}

		putchar('\n');
	}

	return;
}
 
 void Stack_View(const void *vp, unsigned int uilen)
{
	unsigned int uiCnt;
	unsigned int uiLine;

	printf("==============================\n");
	printf("             Stack\n");
	printf("------------------------------\n");

	vp = (char *)vp - (uilen)*4;

	for (uiLine = 0; uiLine < uilen; uiLine++)
	{
		printf(" 0x%08X  ", vp);

		for (uiCnt = 0; uiCnt < 4; ++uiCnt)
		{
			printf("%02X ", *((unsigned char *)vp));
			vp = (char *)vp + 1;
			if (uiCnt == 7) putchar(' ');
		}
		vp = (char *)vp - 4;

		putchar(' ');
		for (uiCnt = 0; uiCnt < 4; ++uiCnt)
		{
			if (32 > *((unsigned char *)vp))
			{
				putchar('.');
			}
			else if (127 < *((unsigned char *)vp))
			{
				putchar('.');
			}
			else
			{
				printf("%c", *((unsigned char *)vp));
			}

			vp = (char *)vp + 1;
		}

		putchar('\n');
	}

	return;
}



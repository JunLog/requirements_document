
CREATE TABLE Elec_Antenna(
	AntennaID VARCHAR(50) NOT NULL,
	JctID VARCHAR(50)  NULL,
	AntennaName VARCHAR(50)   NULL,
	TxZengyi VARCHAR(50)  NULL,
	SPBSWidth VARCHAR(50)  NULL,
	JiHuaFangShi VARCHAR(50)  NULL,
	TxChengshi VARCHAR(50)  NULL,
	WorkHZ VARCHAR(50)  NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
) 



CREATE TABLE Elec_Device(
	DevID VARCHAR(50)  NOT NULL,
	DevPlanID VARCHAR(50)   NULL, 	#���üƻ�ID
	JctID VARCHAR(50)   NULL, 		#������λ�������ֵ䣩
	DevName VARCHAR(50)   NULL,		#�ƻ������豸����
	DevType VARCHAR(10)   NULL,		#�豸���ͣ������ֵ䣩
	Trademark VARCHAR(50)  NULL,	#Ʒ��
	SpecType VARCHAR(50)  NULL,		#����ͺ�
	ProduceHome VARCHAR(50)  NULL,	#����
	ProduceArea VARCHAR(50)  NULL,	#����
	Useness VARCHAR(50)  NULL,		#��;
	Quality VARCHAR(10)  NULL,		#����
	UseUnit VARCHAR(50)  NULL,		#ʹ�õ�λ
	DevExpense NUMERIC(20, 2) NULL,	#���
	AdjustPeriod VARCHAR(50)  NULL,	#У׼����
	OverhaulPeriod VARCHAR(50)  NULL,#��������
	Configure VARCHAR(100)  NULL,	#����
	DevState VARCHAR(10)  NULL,			#�豸״̬���������ֵ��л�ȡ��������/����/ά��
	RunDescribe VARCHAR(500)  NULL,		#�����������
	COMMENT VARCHAR(500)  NULL,		#��ע
	UseDate DATETIME NULL,				#ʹ������
	IsDelete VARCHAR(10)   NULL,	#�Ƿ�ɾ��
	CreateEmpID VARCHAR(50)  NULL,	#������
	CreateDate DATETIME NULL,		#��������
	LastEmpID VARCHAR(50)  NULL,	#�޸���
	LastDate DATETIME NULL,			#�޸�����
	QUnit VARCHAR(10)  NULL,		#������λ
	APUnit VARCHAR(10)  NULL,		#У׼���ڵ�λ
	OPUnit VARCHAR(10)  NULL,		#�������ڵ�λ
	APState VARCHAR(10)  NULL,			#У׼״̬���Ƿ�У׼��0δУ׼��1��У׼��
	OPState VARCHAR(10)  NULL			#����״̬���Ƿ���ޣ�0δ���ޣ�1�Ѽ��ޣ�
) 

CREATE TABLE Elec_Device_Plan(
	DevPlanID VARCHAR(50)  NOT NULL,   #���üƻ�ID
	JctID VARCHAR(50)   NULL,			#������λ�������ֵ䣩
	DevName VARCHAR(100)   NULL,		#�ƻ������豸����
	DevType VARCHAR(10)   NULL,			#�豸���ͣ������ֵ䣩
	Trademark VARCHAR(50)  NULL,		#Ʒ��
	SpecType VARCHAR(50)  NULL,			#����ͺ�
	ProduceHome VARCHAR(50)  NULL,		#����
	ProduceArea VARCHAR(50)  NULL,		#����
	Useness VARCHAR(50)  NULL,			#��;
	Quality VARCHAR(10)  NULL,			#����
	UseUnit VARCHAR(50)  NULL,			#ʹ�õ�λ
	DevExpense Double NULL,				#���
	PlanDate DATETIME NULL,				#�ƻ�ʱ��
	AdjustPeriod VARCHAR(50)  NULL,		#У׼����
	OverhaulPeriod VARCHAR(50)  NULL,	#��������
	Configure VARCHAR(50)  NULL,		#����
	COMMENT VARCHAR(500)  NULL,			#��ע
	PurchaseState VARCHAR(10)  NULL,	#����״̬
	IsDelete VARCHAR(10)  NULL,			#�Ƿ�ɾ��
	CreateEmpID VARCHAR(50)  NULL,		#������
	CreateDate DATETIME NULL,			#����ʱ��
	LastEmpID VARCHAR(50)  NULL,		#�޸���
	LastDate DATETIME NULL,				#�޸�ʱ��
	QUnit VARCHAR(10)  NULL,			#������λ
	APUnit VARCHAR(10)  NULL,			#У׼���ڵ�λ
	OPUnit VARCHAR(10)  NULL,			#�������ڵ�λ
	state VARCHAR(10)  NULL				#���״̬������������ˣ�0δ��ˣ�1����У�2���ͨ����3��˲�ͨ��
) 

CREATE TABLE Elec_Engineering(
	EngineID VARCHAR(50)  NOT NULL,
	ProjID VARCHAR(50)   NULL,
	EngineName VARCHAR(100)   NULL,
	EngineState VARCHAR(10)   NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
) 

CREATE TABLE Elec_Engineering_Plan(
	EnginePlanID VARCHAR(50)  NOT NULL,
	ProjPlanID VARCHAR(50)   NULL,
	EngineName VARCHAR(100)   NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
) 
CREATE TABLE Elec_Engineering_Plan_History(
	SepId VARCHAR(50)  NOT NULL,
	EnginePlanID VARCHAR(50)   NULL,
	ProjPlanID VARCHAR(50)   NULL,
	EngineName VARCHAR(100)   NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	DeclareYear VARCHAR(50)  NULL
) 

#����ͼ�����
CREATE TABLE Elec_FileUpload(
    SeqID INT NOT NULL primary key,   #����ID
	ProjID VARCHAR(50)  NULL,         #����ID/������λ
	BelongTo VARCHAR(50)  NULL,       #����ģ��/ͼֽ���
	FileName VARCHAR(50)  NULL,       #�ļ���
	FileURL VARCHAR(1000)  NULL,      #�ļ�·��
	ProgressTime VARCHAR(20)  NULL,   #�ϴ�ʱ��
	COMMENT VARCHAR(500)  NULL        #�ļ�����
	#IsDelete VARCHAR(10)  NULL,       #�Ƿ�ɾ��
	#CreateEmpID VARCHAR(50)  NULL,    #������
	#CreateDate DATETIME NULL          #����ʱ��
) 

CREATE TABLE Elec_JctBuild(
	BuildID VARCHAR(50)  NOT NULL,
	JctID VARCHAR(50)   NULL,
	BuildName VARCHAR(50)   NULL,
	BuildType VARCHAR(10)   NULL,
	BuildStartDate DATETIME NULL,
	DxDate DATETIME NULL,
	UseDate DATETIME NULL,
	BuildLayer VARCHAR(50)  NULL,
	BuildArea VARCHAR(50)  NULL,
	ExtendBuildDate DATETIME NULL,
	ExtendBuildArea VARCHAR(50)  NULL,
	BuildExpense NUMERIC(20, 2) NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
 ) 
CREATE TABLE Elec_MaintainPlan(
	PlanID VARCHAR(50)  NOT NULL,
	JctID VARCHAR(50)   NULL,
	OccurDate DATETIME  NULL,
	MainContent VARCHAR(500)  NULL,
	COMMENT VARCHAR(500)  NULL
)

CREATE TABLE Elec_Overhaul_Record(
	DevID VARCHAR(50)   NULL,
	IsAdjust VARCHAR(10)   NULL,
	StartDate DATETIME  NULL,
	EndDate DATETIME  NULL,
	IsHaving VARCHAR(10)   NULL,
	Record VARCHAR(500)  NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	SeqID INT NOT NULL
) 
CREATE TABLE Elec_Project(
	ProjID VARCHAR(50)  NOT NULL,
	JctID VARCHAR(50)   NULL,
	LayProjID VARCHAR(50)   NULL,
	ProjName VARCHAR(100)   NULL,
	ProjState VARCHAR(10)   NULL,
	ProjType VARCHAR(50)   NULL,
	PlanInvest NUMERIC(20, 2) NULL,
	MainContent VARCHAR(100)  NULL,
	BuildDate DATETIME NULL,
	IsYanShou VARCHAR(10)   NULL,
	Cycle VARCHAR(50)  NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	YanShouDate DATETIME NULL,
	ProjSize VARCHAR(50)  NULL
) 

CREATE TABLE Elec_Project_Declare(
	SeqID INT NOT NULL,
	ProjPlanID VARCHAR(50)   NULL,
	DeclareYear VARCHAR(10)   NULL,
	DeclareState VARCHAR(10)   NULL
)
CREATE TABLE Elec_Project_Layout(
	LayProjID VARCHAR(50)  NOT NULL,
	ProjName VARCHAR(100)   NULL,
	SeqID INT  NULL,
	ProjGrade INT  NULL,
	ParentProjID VARCHAR(50)   NULL,
	Property VARCHAR(10)   NULL,
	Size VARCHAR(50)  NULL,
	Adress VARCHAR(50)  NULL,
	StartTime DATETIME NULL,
	EndTime DATETIME NULL,
	PlanStartTime DATETIME NULL,
	PlanInvest NUMERIC(20, 2) NULL,
	MainContent VARCHAR(500)  NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	VarSeqId VARCHAR(50)  NULL
) 

CREATE TABLE Elec_Project_Plan(
	ProjPlanID VARCHAR(50)  NOT NULL,
	JctID VARCHAR(50)   NULL,
	LayProjID VARCHAR(50)   NULL,
	ProjName VARCHAR(100)   NULL,
	ProjState VARCHAR(10)   NULL,
	ProjType VARCHAR(10)   NULL,
	DeclareDate DATETIME NULL,
	PlanInvest NUMERIC(20, 2) NULL,
	KeYan VARCHAR(10)   NULL,
	ChuShe VARCHAR(10)   NULL,
	KeYanInvest NUMERIC(20, 2) NULL,
	ChuSheInvest NUMERIC(20, 2) NULL,
	IsDeclare VARCHAR(10)   NULL,
	IsApprove VARCHAR(10)   NULL,
	Gist VARCHAR(100)  NULL,
	MainContent VARCHAR(500)  NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	ProjSize VARCHAR(50)  NULL
)

 
CREATE TABLE Elec_Station(
	StationID VARCHAR(50)  NOT NULL,
	JctID VARCHAR(50)   NULL,
	StationCode VARCHAR(50)   NULL,
	StationName VARCHAR(50)   NULL,
	JCFrequency VARCHAR(100)  NULL,
	ProduceHome VARCHAR(50)  NULL,
	ContactType VARCHAR(50)  NULL,
	UseStartDate DATETIME NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	StationType VARCHAR(50)   NULL,
	AttributionGround VARCHAR(50)  NULL,
	period VARCHAR(50)  NULL
)
CREATE TABLE Elec_StationBug(
	BugID INT  NOT NULL,
	StationID VARCHAR(50)   NULL,
	JctID VARCHAR(50)   NULL,
	SbMonth VARCHAR(50)   NULL,
	BugType VARCHAR(10)   NULL,
	OccurDate VARCHAR(50)   NULL,
	LauncherName VARCHAR(50)  NULL,
	BugDescribe VARCHAR(500)  NULL,
	ResolveDate VARCHAR(50)  NULL,
	ResolveMethod VARCHAR(500)  NULL,
	BugReason VARCHAR(500)  NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
)
CREATE TABLE Elec_SubEngineering(
	SubEngineID VARCHAR(50)  NOT NULL,
	ProjID VARCHAR(50)   NULL,
	EngineID VARCHAR(50)   NULL,
	SubEngineName VARCHAR(100)   NULL,
	SubEngineState VARCHAR(10)   NULL,
	UnitPrice NUMERIC(20, 2) NULL,
	Quality INT NULL,
	PlanInvest NUMERIC(20, 2) NULL,
	InvestMonth VARCHAR(50)  NULL,
	ActualInvest NUMERIC(20, 2) NULL,
	TiaoGaiInvest NUMERIC(20, 2) NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
)
CREATE TABLE Elec_SubEngineering_Plan(
	SubEngineID VARCHAR(50)  NOT NULL,
	ProjPlanID VARCHAR(50)   NULL,
	EnginePlanID VARCHAR(50)   NULL,
	SubEngineName VARCHAR(100)   NULL,
	UnitPrice NUMERIC(20, 2) NULL,
	Quality INT NULL,
	PlanInvest NUMERIC(20, 2) NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL
) 
CREATE TABLE Elec_SubEngineering_Plan_History(
	SsepId VARCHAR(50)  NOT NULL,
	SubEngineID VARCHAR(50)   NULL,
	ProjPlanID VARCHAR(50)   NULL,
	EnginePlanID VARCHAR(50)   NULL,
	SubEngineName VARCHAR(100)   NULL,
	UnitPrice NUMERIC(20, 2) NULL,
	Quality INT NULL,
	PlanInvest NUMERIC(20, 2) NULL,
	COMMENT VARCHAR(500)  NULL,
	IsDelete VARCHAR(10)   NULL,
	CreateEmpID VARCHAR(50)  NULL,
	CreateDate DATETIME NULL,
	LastEmpID VARCHAR(50)  NULL,
	LastDate DATETIME NULL,
	DeclareYear VARCHAR(50)   NULL
) 

#�������ñ�
CREATE TABLE Elec_ExportFields(
	belongTo VARCHAR(10)  NOT NULL primary key,           #����ģ�飨��Ȼ�����������û�����Ϊ��5-1
	expNameList VARCHAR(5000)  NULL,          #�����ֶε�������
	expFieldName VARCHAR(5000)  NULL,         #�����ֶε�Ӣ����
	noExpNameList VARCHAR(5000)  NULL,        #δ�����ֶε�������
	noExpFieldName VARCHAR(5000)  NULL        #δ�����ֶε�Ӣ����
)
�洢���м������ 5-3
  stationRun#devRun#createDate
  վ���������#�豸�������#��������

�洢�û��������� 5-1
  jctID#userName#logonName#logonPwd#sexID#birthday#address#contactTel#email#mobile#isDuty#onDutyDate#offDutyDate#remark
	������λ#�û�����#��¼��#����#�Ա�#��������#��ϵ��ַ#��ϵ�绰#��������#�ֻ�#�Ƿ���ְ#��ְʱ��#��ְʱ��#��ע



#���м��
CREATE TABLE Elec_CommonMsg(
	comID VARCHAR(50)  NOT NULL primary key,    #����ID
	stationRun VARCHAR(5000)  NULL, #վ���������
	devRun VARCHAR(5000)  NULL,    #�豸�������
	createDate DATETIME NULL        #��������
	#createEmpCode VARCHAR(50)  NULL,#������
	
) 

#���м�ص����ݱ�
CREATE TABLE Elec_CommonMsg_Content(
	comID VARCHAR(50)  NOT NULL primary key,    #����ID
	type VARCHAR(10) NULL, 				#�ж�վ����豸���еı�ʶ
	content VARCHAR(5000) NULL,		#��������
	orderby int  NULL				#������ʾ����
	
) 


#�����ֵ�
CREATE TABLE Elec_SystemDDL(
	seqID INT NOT NULL primary key,          #����ID(������)
	keyword VARCHAR(20)   NULL,  #��������
	ddlCode INT  NULL,           #�������code
	ddlName VARCHAR(50)  NULL    #�������value
) 
#�û���
CREATE TABLE Elec_User(
	userID VARCHAR(50)  NOT NULL primary key, #����ID
	jctID VARCHAR(50)   NULL,     #������λcode
	jctUnitID VARCHAR(50)  NULL,  #������λ�ĵ�λ���ƣ�������
	userName VARCHAR(50)   NULL,  #�û�����
	logonName VARCHAR(50)   NULL, #��¼��
	logonPwd VARCHAR(50)  NULL,   #����#
	sexID VARCHAR(50)  NULL,      #�Ա�
	birthday DATETIME NULL,       #��������
	address VARCHAR(100)  NULL,    #��ϵ��ַ
	contactTel VARCHAR(50)  NULL, #��ϵ�绰 
	email VARCHAR(100)  NULL,      #��������
	mobile VARCHAR(50)  NULL,     #�ֻ�
	isDuty VARCHAR(50)  NULL,     #�Ƿ���ְ
	postID VARCHAR(50)  NULL,     #ְλ����Ҫ���ڹ�������ˣ�
	onDutyDate DATETIME NULL,     #��ְʱ��
	offDutyDate DATETIME NULL,    #��ְʱ��
	remark VARCHAR(500)  NULL   #��ע
	#isDelete VARCHAR(10)   NULL,  #�Ƿ�ɾ��
	#createEmpID VARCHAR(50)  NULL,#������ID
	#createDate DATETIME NULL,     #����ʱ��
	#lastEmpID VARCHAR(50)  NULL,  #�޸���ID
	#lastDate DATETIME NULL        #�޸�ʱ��
) 
#�����ֵ���Ҫ�����VARCHAR���������������ֵ��ddlCode��ddlName֮���ת��
#�û�ְ�Ƹ�����
CREATE TABLE Elec_User_File(
	fileID VARCHAR(50)  NOT NULL primary key, #����ID
	userID VARCHAR(50)   NULL,     #�û�ID
	fileName VARCHAR(50)  NULL,       #�ļ���
	fileURL VARCHAR(1000)  NULL,      #�ļ�·��
	progressTime TIMESTAMP  NULL,   #�ϴ�ʱ��
	CONSTRAINT FOREIGN KEY(userID) REFERENCES Elec_User(userID)
) 

#Ȩ����Ϣ��
CREATE TABLE Elec_Popedom(
	id VARCHAR(32)  NOT NULL,      			#Ȩ��Code������ID��
	pid VARCHAR(32)   NOT NULL,          		#����Ȩ��code������Ѿ��Ǹ��ڵ���Ϊ0
	NAME VARCHAR(500)  NULL,     				#Ȩ������
	page VARCHAR(5000)  NULL,     				#Ȩ����ϵͳ��ִ�з��ʵ�ַ��URL
	generatemenu VARCHAR(200) NULL,			#���˵�����
	description VARCHAR(1000) NULL,			#��������
	orderby INT NULL,       				#��������Ǹ�Ϊ0���Ӵ�1��ʼ����
	isMenu BOOLEAN NULL,          				#�Ƿ���ϵͳ�˵��ṹ��true�ǲ˵���false���ǲ˵���
	PRIMARY KEY(id,pid)                        #������������
)

#��ɫ��Ϣ��
CREATE TABLE Elec_Role(
	roleID VARCHAR(32)  NOT NULL primary key,   #��ɫID
	roleName VARCHAR(500)                    	#��ɫ����
)

#�û���ɫ��Ϣ��
CREATE TABLE Elec_User_Role(
    userID VARCHAR(32)  NOT NULL,               #�û�ID
	roleID VARCHAR(32)  NOT NULL,      			#Ȩ�޽�ɫID
	PRIMARY KEY(userID,roleID)                 #������������
)

#��ɫȨ����Ϣ��
CREATE TABLE Elec_Role_Popedom(
	roleID VARCHAR(32)  NOT NULL,      			#Ȩ�޽�ɫID
	id VARCHAR(32)   NOT NULL,          		#Ȩ��Code������ID��
	pid VARCHAR(32)  NOT NULL,     				#����Ȩ��code������Ѿ��Ǹ��ڵ���Ϊ0
	PRIMARY KEY(roleID,id,pId)                 #������������
)

#��־��
CREATE TABLE Elec_Log(
	logID varchar(50) not null primary key, #����ID
	ipAddress varchar(50),			#IP��ַ
	opeName varchar(50),				#������
	opeTime DATETIME,						#����ʱ��
	details varchar(500)        #������ϸ
)

#ϵͳ֪ͨ����
CREATE TABLE Elec_Notice(
	noticeID varchar(50) not null primary key, #����ID
	content varchar(5000),				#֪ͨ����
	opeName varchar(50),				#������
	opeTime DATETIME					#����ʱ��
)

#���Ա�
CREATE TABLE Elec_Text(
	textID varchar(50) not null primary key,
	textName varchar(50),
	textDate datetime,
	textRemark varchar(500)
)





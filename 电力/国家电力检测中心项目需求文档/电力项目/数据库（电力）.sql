
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
	DevPlanID VARCHAR(50)   NULL, 	#购置计划ID
	JctID VARCHAR(50)   NULL, 		#所属单位（数据字典）
	DevName VARCHAR(50)   NULL,		#计划购置设备名称
	DevType VARCHAR(10)   NULL,		#设备类型（数据字典）
	Trademark VARCHAR(50)  NULL,	#品牌
	SpecType VARCHAR(50)  NULL,		#规格型号
	ProduceHome VARCHAR(50)  NULL,	#厂家
	ProduceArea VARCHAR(50)  NULL,	#产地
	Useness VARCHAR(50)  NULL,		#用途
	Quality VARCHAR(10)  NULL,		#数量
	UseUnit VARCHAR(50)  NULL,		#使用单位
	DevExpense NUMERIC(20, 2) NULL,	#金额
	AdjustPeriod VARCHAR(50)  NULL,	#校准周期
	OverhaulPeriod VARCHAR(50)  NULL,#检修周期
	Configure VARCHAR(100)  NULL,	#配置
	DevState VARCHAR(10)  NULL,			#设备状态（从数据字典中获取），正常/检修/维修
	RunDescribe VARCHAR(500)  NULL,		#运行情况描述
	COMMENT VARCHAR(500)  NULL,		#备注
	UseDate DATETIME NULL,				#使用日期
	IsDelete VARCHAR(10)   NULL,	#是否删除
	CreateEmpID VARCHAR(50)  NULL,	#创建人
	CreateDate DATETIME NULL,		#创建日期
	LastEmpID VARCHAR(50)  NULL,	#修改人
	LastDate DATETIME NULL,			#修改日期
	QUnit VARCHAR(10)  NULL,		#数量单位
	APUnit VARCHAR(10)  NULL,		#校准周期单位
	OPUnit VARCHAR(10)  NULL,		#检修周期单位
	APState VARCHAR(10)  NULL,			#校准状态，是否校准（0未校准，1已校准）
	OPState VARCHAR(10)  NULL			#检修状态，是否检修（0未检修，1已检修）
) 

CREATE TABLE Elec_Device_Plan(
	DevPlanID VARCHAR(50)  NOT NULL,   #购置计划ID
	JctID VARCHAR(50)   NULL,			#所属单位（数据字典）
	DevName VARCHAR(100)   NULL,		#计划购置设备名称
	DevType VARCHAR(10)   NULL,			#设备类型（数据字典）
	Trademark VARCHAR(50)  NULL,		#品牌
	SpecType VARCHAR(50)  NULL,			#规格型号
	ProduceHome VARCHAR(50)  NULL,		#厂家
	ProduceArea VARCHAR(50)  NULL,		#产地
	Useness VARCHAR(50)  NULL,			#用途
	Quality VARCHAR(10)  NULL,			#数量
	UseUnit VARCHAR(50)  NULL,			#使用单位
	DevExpense Double NULL,				#金额
	PlanDate DATETIME NULL,				#计划时间
	AdjustPeriod VARCHAR(50)  NULL,		#校准周期
	OverhaulPeriod VARCHAR(50)  NULL,	#检修周期
	Configure VARCHAR(50)  NULL,		#配置
	COMMENT VARCHAR(500)  NULL,			#备注
	PurchaseState VARCHAR(10)  NULL,	#购买状态
	IsDelete VARCHAR(10)  NULL,			#是否删除
	CreateEmpID VARCHAR(50)  NULL,		#创建人
	CreateDate DATETIME NULL,			#创建时间
	LastEmpID VARCHAR(50)  NULL,		#修改人
	LastDate DATETIME NULL,				#修改时间
	QUnit VARCHAR(10)  NULL,			#数量单位
	APUnit VARCHAR(10)  NULL,			#校准周期单位
	OPUnit VARCHAR(10)  NULL,			#检修周期单位
	state VARCHAR(10)  NULL				#审核状态（用于流程审核）0未审核，1审核中，2审核通过，3审核不通过
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

#资料图书管理
CREATE TABLE Elec_FileUpload(
    SeqID INT NOT NULL primary key,   #主键ID
	ProjID VARCHAR(50)  NULL,         #工程ID/所属单位
	BelongTo VARCHAR(50)  NULL,       #所属模块/图纸类别
	FileName VARCHAR(50)  NULL,       #文件名
	FileURL VARCHAR(1000)  NULL,      #文件路径
	ProgressTime VARCHAR(20)  NULL,   #上传时间
	COMMENT VARCHAR(500)  NULL        #文件描述
	#IsDelete VARCHAR(10)  NULL,       #是否删除
	#CreateEmpID VARCHAR(50)  NULL,    #创建人
	#CreateDate DATETIME NULL          #创建时间
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

#导出设置表
CREATE TABLE Elec_ExportFields(
	belongTo VARCHAR(10)  NOT NULL primary key,           #所属模块（自然主键），如用户管理为：5-1
	expNameList VARCHAR(5000)  NULL,          #导出字段的中文名
	expFieldName VARCHAR(5000)  NULL,         #导出字段的英文名
	noExpNameList VARCHAR(5000)  NULL,        #未导出字段的中文名
	noExpFieldName VARCHAR(5000)  NULL        #未导出字段的英文名
)
存储运行监控数据 5-3
  stationRun#devRun#createDate
  站点运行情况#设备运行情况#创建日期

存储用户管理数据 5-1
  jctID#userName#logonName#logonPwd#sexID#birthday#address#contactTel#email#mobile#isDuty#onDutyDate#offDutyDate#remark
	所属单位#用户姓名#登录名#密码#性别#出生日期#联系地址#联系电话#电子邮箱#手机#是否在职#入职时间#离职时间#备注



#运行监控
CREATE TABLE Elec_CommonMsg(
	comID VARCHAR(50)  NOT NULL primary key,    #主键ID
	stationRun VARCHAR(5000)  NULL, #站点运行情况
	devRun VARCHAR(5000)  NULL,    #设备运行情况
	createDate DATETIME NULL        #创建日期
	#createEmpCode VARCHAR(50)  NULL,#创建人
	
) 

#运行监控的数据表
CREATE TABLE Elec_CommonMsg_Content(
	comID VARCHAR(50)  NOT NULL primary key,    #主键ID
	type VARCHAR(10) NULL, 				#判断站点和设备运行的标识
	content VARCHAR(5000) NULL,		#数据内容
	orderby int  NULL				#数据显示排序
	
) 


#数据字典
CREATE TABLE Elec_SystemDDL(
	seqID INT NOT NULL primary key,          #主键ID(自增长)
	keyword VARCHAR(20)   NULL,  #数据类型
	ddlCode INT  NULL,           #数据项的code
	ddlName VARCHAR(50)  NULL    #数据项的value
) 
#用户表
CREATE TABLE Elec_User(
	userID VARCHAR(50)  NOT NULL primary key, #主键ID
	jctID VARCHAR(50)   NULL,     #所属单位code
	jctUnitID VARCHAR(50)  NULL,  #所属单位的单位名称（联动）
	userName VARCHAR(50)   NULL,  #用户姓名
	logonName VARCHAR(50)   NULL, #登录名
	logonPwd VARCHAR(50)  NULL,   #密码#
	sexID VARCHAR(50)  NULL,      #性别
	birthday DATETIME NULL,       #出生日期
	address VARCHAR(100)  NULL,    #联系地址
	contactTel VARCHAR(50)  NULL, #联系电话 
	email VARCHAR(100)  NULL,      #电子邮箱
	mobile VARCHAR(50)  NULL,     #手机
	isDuty VARCHAR(50)  NULL,     #是否在职
	postID VARCHAR(50)  NULL,     #职位（主要用于工作流审核）
	onDutyDate DATETIME NULL,     #入职时间
	offDutyDate DATETIME NULL,    #离职时间
	remark VARCHAR(500)  NULL   #备注
	#isDelete VARCHAR(10)   NULL,  #是否删除
	#createEmpID VARCHAR(50)  NULL,#创建人ID
	#createDate DATETIME NULL,     #创建时间
	#lastEmpID VARCHAR(50)  NULL,  #修改人ID
	#lastDate DATETIME NULL        #修改时间
) 
#数据字典项要定义成VARCHAR，可以用于数据字典的ddlCode和ddlName之间的转换
#用户职称附件表
CREATE TABLE Elec_User_File(
	fileID VARCHAR(50)  NOT NULL primary key, #主键ID
	userID VARCHAR(50)   NULL,     #用户ID
	fileName VARCHAR(50)  NULL,       #文件名
	fileURL VARCHAR(1000)  NULL,      #文件路径
	progressTime TIMESTAMP  NULL,   #上传时间
	CONSTRAINT FOREIGN KEY(userID) REFERENCES Elec_User(userID)
) 

#权限信息表
CREATE TABLE Elec_Popedom(
	id VARCHAR(32)  NOT NULL,      			#权限Code（主键ID）
	pid VARCHAR(32)   NOT NULL,          		#父级权限code，如果已经是根节点则为0
	NAME VARCHAR(500)  NULL,     				#权限名称
	page VARCHAR(5000)  NULL,     				#权限在系统中执行访问地址的URL
	generatemenu VARCHAR(200) NULL,			#左侧菜单名称
	description VARCHAR(1000) NULL,			#功能描述
	orderby INT NULL,       				#排序（如果是父为0，子从1开始排序）
	isMenu BOOLEAN NULL,          				#是否是系统菜单结构（true是菜单，false不是菜单）
	PRIMARY KEY(id,pid)                        #设置联合主键
)

#角色信息表
CREATE TABLE Elec_Role(
	roleID VARCHAR(32)  NOT NULL primary key,   #角色ID
	roleName VARCHAR(500)                    	#角色名称
)

#用户角色信息表
CREATE TABLE Elec_User_Role(
    userID VARCHAR(32)  NOT NULL,               #用户ID
	roleID VARCHAR(32)  NOT NULL,      			#权限角色ID
	PRIMARY KEY(userID,roleID)                 #设置联合主键
)

#角色权限信息表
CREATE TABLE Elec_Role_Popedom(
	roleID VARCHAR(32)  NOT NULL,      			#权限角色ID
	id VARCHAR(32)   NOT NULL,          		#权限Code（主键ID）
	pid VARCHAR(32)  NOT NULL,     				#父级权限code，如果已经是根节点则为0
	PRIMARY KEY(roleID,id,pId)                 #设置联合主键
)

#日志表
CREATE TABLE Elec_Log(
	logID varchar(50) not null primary key, #主键ID
	ipAddress varchar(50),			#IP地址
	opeName varchar(50),				#操作人
	opeTime DATETIME,						#操作时间
	details varchar(500)        #操作明细
)

#系统通知栏表
CREATE TABLE Elec_Notice(
	noticeID varchar(50) not null primary key, #主键ID
	content varchar(5000),				#通知内容
	opeName varchar(50),				#操作人
	opeTime DATETIME					#操作时间
)

#测试表
CREATE TABLE Elec_Text(
	textID varchar(50) not null primary key,
	textName varchar(50),
	textDate datetime,
	textRemark varchar(500)
)





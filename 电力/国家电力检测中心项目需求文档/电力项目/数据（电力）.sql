--------------------------------------------------------------------------

#程序初始化可执行下面所有的sql语句
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 1,'性别',1,'男' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 2,'性别',2,'女');
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 3,'是否在职',1,'是' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 4,'是否在职',2,'否' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 5,'所属单位',1,'北京' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 6,'所属单位',2,'上海' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 7,'所属单位',3,'深圳' );


INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 15,'审核状态',1,'审核中' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 16,'审核状态',2,'审核通过' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 17,'审核状态',3,'审核不通过' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 17,'图纸类别',1,'国内图书' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 18,'图纸类别',2,'国外图书' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 19,'职位',1,'员工' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 20,'职位',2,'设备购置科副科长' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 21,'职位',3,'设备购置科科长' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 22,'职位',4,'财务' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 23,'职位',5,'公司总经理' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 24,'职位',6,'公司总裁' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 31,'设备类型',1,'电力设备' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 32,'设备类型',2,'电机设备' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 33,'设备类型',3,'发电设备' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 51,'北京',1,'北京昌平电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 52,'北京',2,'北京海淀电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 53,'北京',3,'北京西城电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 54,'上海',1,'上海浦东电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 55,'上海',2,'上海闸北电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 56,'上海',3,'上海徐汇电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 57,'深圳',1,'深圳福田电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 58,'深圳',2,'深圳龙岗电力公司' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 59,'深圳',3,'深圳南山电力公司' );



------------------------------------------------------------------------------------------------------------------------
#系统权限


#初始化用户，角色，权限，登录名admin，密码admin，超级管理员权限
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID) VALUES('402881e43d8b1e28013d8b8ae5a10001','admin','21232F297A57A5A743894A0E4A801FC3','超级管理员','1','1','1','1');

insert into elec_user_role(userID,roleID) values('402881e43d8b1e28013d8b8ae5a10001','1');

insert into elec_role_popedom(roleID,id,pId) values('1','aa','0');
insert into elec_role_popedom(roleID,id,pId) values('1','ao','am');
insert into elec_role_popedom(roleID,id,pId) values('1','aa','0');
insert into elec_role_popedom(roleID,id,pId) values('1','ga','0');
insert into elec_role_popedom(roleID,id,pId) values('1','gb','ga');
insert into elec_role_popedom(roleID,id,pId) values('1','gc','ga');


#用于导入
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10002','zhangwuji','202CB962AC59075B964B07152D234B70','张无忌','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10003','zhangcuisan','202CB962AC59075B964B07152D234B70','张翠山','2','1','1','2','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10004','xiaofeixinag','202CB962AC59075B964B07152D234B70','小飞象','3','2','1','2','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10005','dahuangfeng','202CB962AC59075B964B07152D234B70','大黄蜂','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10006','zhangzhong','202CB962AC59075B964B07152D234B70','张忠','2','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10007','zhangxia','202CB962AC59075B964B07152D234B70','张夏','3','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10008','zhangaiqin','202CB962AC59075B964B07152D234B70','张爱琴','1','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10011','zhangalibaba','202CB962AC59075B964B07152D234B70','张阿里巴巴','2','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10012','zhangxiaolu','202CB962AC59075B964B07152D234B70','张小绿','3','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10013','zhangdashan','202CB962AC59075B964B07152D234B70','张大山','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10014','zhangmengzhuang','202CB962AC59075B964B07152D234B70','张梦妆','1','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10015','lisi','202CB962AC59075B964B07152D234B70','李四','1','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10016','limengfei','202CB962AC59075B964B07152D234B70','李梦菲','2','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10017','wangzhongshan','202CB962AC59075B964B07152D234B70','王中山','2','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10018','wangcai','202CB962AC59075B964B07152D234B70','旺财','3','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10019','hongqigong','202CB962AC59075B964B07152D234B70','洪七公','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10020','huanglaoxie','202CB962AC59075B964B07152D234B70','黄老邪','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10021','laowantong','202CB962AC59075B964B07152D234B70','老顽童','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10022','全真七子','202CB962AC59075B964B07152D234B70','全真七子','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10023','qiuchuji','202CB962AC59075B964B07152D234B70','丘处机','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10024','huazheng','202CB962AC59075B964B07152D234B70','华筝','1','2','1','3','1');

INSERT INTO  elec_role(roleID,roleName) values( '1','系统管理员');
INSERT INTO  elec_role(roleID,roleName) values( '2','高级管理员');
INSERT INTO  elec_role(roleID,roleName) values( '3','中级管理员');
INSERT INTO  elec_role(roleID,roleName) values( '4','业务用户' );
INSERT INTO  elec_role(roleID,roleName) values( '5','一般用户' );
INSERT INTO  elec_role(roleID,roleName) values( '6','普通用户' );

#导出设置数据初始化
INSERT INTO elec_exportfields(belongTo,expNameList,expFieldName) VALUES('5-3','站点运行情况#设备运行情况#创建日期','stationRun#devRun#createDate');
INSERT INTO elec_exportfields(belongTo,expNameList,expFieldName) VALUES('5-1','所属单位#用户姓名#登录名#密码#性别#出生日期#联系地址#联系电话#电子邮箱#手机#是否在职#入职时间#离职时间#职位#备注','d.ddlName as d#a.userName#a.logonName#a.logonPwd#b.ddlName as b#a.birthday#a.address#a.contactTel#a.email#a.mobile#e.ddlName as e#a.onDutyDate#a.offDutyDate#c.ddlName as c#a.remark');
  


###############################################################################################################################################

#左侧菜单（基本功能）
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'aa','0','技术设施维护管理','','basic','技术设施维护管理根节点','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ab','aa','仪器设备管理','../equapment/equapmentIndex.jsp','basic','仪器设备管理','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ac','aa','设备校准检修','../equapment/adjustIndex.jsp','basic','设备校准检修','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ad','aa','设备购置计划','../equapment/elecDevicePlanAction_home.do','basic','设备购置计划','3',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ae','0','技术资料图纸管理','','basic','技术设施维护管理根节点','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'af','ae','资料图纸管理','../dataChart/elecFileUploadAction_home.do','basic','资料图纸管理','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ag','0','站点设备运行管理','','basic','技术设施维护管理根节点','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ah','ag','站点基本信息','../siteEquapment/siteInfoIndex.jsp','basic','技术设施维护管理根节点','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ai','ag','运行情况','../siteEquapment/siteRunIndex.jsp','basic','技术设施维护管理根节点','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'aj','ag','维护情况','../siteEquapment/siteMaintainIndex.jsp','basic','技术设施维护管理根节点','3',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ak','0','监测台建筑管理','','basic','监测台建筑管理根节点','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'al','ak','建筑物信息管理','../building/buildingIndex.jsp','basic','建筑物信息管理','1',TRUE );
#左侧菜单（系统管理）
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'am','0','系统管理','','system','系统管理根节点','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'an','am','用户管理','../system/elecUserAction_home.do','system','用户管理','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ao','am','角色管理','../system/elecRoleAction_home.do','system','角色管理','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ap','am','运行监控','../system/elecCommonMsgAction_home.do','system','运行监控','3',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'aq','am','数据字典','../system/elecSystemDDLAction_home.do','system','数据字典','4',TRUE );

#左侧菜单（流程管理）
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ar','0','流程管理','','workflow','流程管理根节点','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'as','ar','流程部署管理','../workflow/elecWorkflowAction_deployHome.do','workflow','流程部署管理','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'at','ar','流程执行管理（组任务）','../workflow/elecWorkflowAction_taskGroupHome.do','workflow','流程执行管理','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'au','ar','流程执行管理（个人任务）','../workflow/elecWorkflowAction_taskHome.do','workflow','流程执行管理','3',TRUE );


#用户管理
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fa','0','用户管理','','user','用户管理根节点','0',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fb','fa','新增','/system/elecUserAction_add.do','user','用户新增','1',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fc','fa','保存','/system/elecUserAction_save.do','user','用户保存','2',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fd','fa','编辑','/system/elecUserAction_edit.do','user','用户编辑','3',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fe','fa','删除','/system/elecUserAction_delete.do','user','用户删除','4',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ff','fa','导出设置','/system/elecExportFieldsAction_setExportFields.do','user','导出设置','5',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fg','fa','导出excel','/system/elecUserAction_exportExcel.do','user','导出设置','6',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fh','fa','excel导入页面','/system/elecUserAction_importPage.do','user','excel导入页面','7',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fi','fa','excel导入','/system/elecUserAction_importData.do','user','excel导入','8',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fj','fa','人员统计(单位)','/system/elecUserAction_chartUser.do','user','人员统计(单位)','9',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fk','fa','人员统计(性别)','/system/elecUserAction_chartUserFCF.do','user','人员统计(性别)','10',FALSE  );


#角色管理
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ga','0','角色管理','','role','角色管理根节点','0',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'gb','ga','编辑','/system/elecRoleAction_edit.do','role','角色编辑','1',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'gc','ga','保存','/system/elecRoleAction_save.do','role','角色保存','2',FALSE );

————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————







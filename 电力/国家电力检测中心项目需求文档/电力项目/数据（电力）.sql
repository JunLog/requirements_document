--------------------------------------------------------------------------

#�����ʼ����ִ���������е�sql���
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 1,'�Ա�',1,'��' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 2,'�Ա�',2,'Ů');
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 3,'�Ƿ���ְ',1,'��' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 4,'�Ƿ���ְ',2,'��' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 5,'������λ',1,'����' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 6,'������λ',2,'�Ϻ�' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 7,'������λ',3,'����' );


INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 15,'���״̬',1,'�����' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 16,'���״̬',2,'���ͨ��' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 17,'���״̬',3,'��˲�ͨ��' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 17,'ͼֽ���',1,'����ͼ��' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 18,'ͼֽ���',2,'����ͼ��' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 19,'ְλ',1,'Ա��' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 20,'ְλ',2,'�豸���ÿƸ��Ƴ�' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 21,'ְλ',3,'�豸���ÿƿƳ�' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 22,'ְλ',4,'����' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 23,'ְλ',5,'��˾�ܾ���' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 24,'ְλ',6,'��˾�ܲ�' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 31,'�豸����',1,'�����豸' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 32,'�豸����',2,'����豸' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 33,'�豸����',3,'�����豸' );

INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 51,'����',1,'������ƽ������˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 52,'����',2,'�������������˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 53,'����',3,'�������ǵ�����˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 54,'�Ϻ�',1,'�Ϻ��ֶ�������˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 55,'�Ϻ�',2,'�Ϻ�բ��������˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 56,'�Ϻ�',3,'�Ϻ���������˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 57,'����',1,'���ڸ��������˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 58,'����',2,'�������ڵ�����˾' );
INSERT INTO elec_systemddl(SeqID,Keyword,DdlCode,DdlName) values( 59,'����',3,'������ɽ������˾' );



------------------------------------------------------------------------------------------------------------------------
#ϵͳȨ��


#��ʼ���û�����ɫ��Ȩ�ޣ���¼��admin������admin����������ԱȨ��
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID) VALUES('402881e43d8b1e28013d8b8ae5a10001','admin','21232F297A57A5A743894A0E4A801FC3','��������Ա','1','1','1','1');

insert into elec_user_role(userID,roleID) values('402881e43d8b1e28013d8b8ae5a10001','1');

insert into elec_role_popedom(roleID,id,pId) values('1','aa','0');
insert into elec_role_popedom(roleID,id,pId) values('1','ao','am');
insert into elec_role_popedom(roleID,id,pId) values('1','aa','0');
insert into elec_role_popedom(roleID,id,pId) values('1','ga','0');
insert into elec_role_popedom(roleID,id,pId) values('1','gb','ga');
insert into elec_role_popedom(roleID,id,pId) values('1','gc','ga');


#���ڵ���
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10002','zhangwuji','202CB962AC59075B964B07152D234B70','���޼�','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10003','zhangcuisan','202CB962AC59075B964B07152D234B70','�Ŵ�ɽ','2','1','1','2','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10004','xiaofeixinag','202CB962AC59075B964B07152D234B70','С����','3','2','1','2','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10005','dahuangfeng','202CB962AC59075B964B07152D234B70','��Ʒ�','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10006','zhangzhong','202CB962AC59075B964B07152D234B70','����','2','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10007','zhangxia','202CB962AC59075B964B07152D234B70','����','3','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10008','zhangaiqin','202CB962AC59075B964B07152D234B70','�Ű���','1','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10011','zhangalibaba','202CB962AC59075B964B07152D234B70','�Ű���Ͱ�','2','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10012','zhangxiaolu','202CB962AC59075B964B07152D234B70','��С��','3','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10013','zhangdashan','202CB962AC59075B964B07152D234B70','�Ŵ�ɽ','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10014','zhangmengzhuang','202CB962AC59075B964B07152D234B70','����ױ','1','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10015','lisi','202CB962AC59075B964B07152D234B70','����','1','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10016','limengfei','202CB962AC59075B964B07152D234B70','���η�','2','2','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10017','wangzhongshan','202CB962AC59075B964B07152D234B70','����ɽ','2','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10018','wangcai','202CB962AC59075B964B07152D234B70','����','3','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10019','hongqigong','202CB962AC59075B964B07152D234B70','���߹�','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10020','huanglaoxie','202CB962AC59075B964B07152D234B70','����а','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10021','laowantong','202CB962AC59075B964B07152D234B70','����ͯ','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10022','ȫ������','202CB962AC59075B964B07152D234B70','ȫ������','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10023','qiuchuji','202CB962AC59075B964B07152D234B70','�𴦻�','1','1','1','3','1');
INSERT INTO elec_user(userID,logonName,logonPwd,userName,jctID,sexID,isDuty,postID,jctUnitID) VALUES('402881e43d8b1e28013d8b8ae5a10024','huazheng','202CB962AC59075B964B07152D234B70','����','1','2','1','3','1');

INSERT INTO  elec_role(roleID,roleName) values( '1','ϵͳ����Ա');
INSERT INTO  elec_role(roleID,roleName) values( '2','�߼�����Ա');
INSERT INTO  elec_role(roleID,roleName) values( '3','�м�����Ա');
INSERT INTO  elec_role(roleID,roleName) values( '4','ҵ���û�' );
INSERT INTO  elec_role(roleID,roleName) values( '5','һ���û�' );
INSERT INTO  elec_role(roleID,roleName) values( '6','��ͨ�û�' );

#�����������ݳ�ʼ��
INSERT INTO elec_exportfields(belongTo,expNameList,expFieldName) VALUES('5-3','վ���������#�豸�������#��������','stationRun#devRun#createDate');
INSERT INTO elec_exportfields(belongTo,expNameList,expFieldName) VALUES('5-1','������λ#�û�����#��¼��#����#�Ա�#��������#��ϵ��ַ#��ϵ�绰#��������#�ֻ�#�Ƿ���ְ#��ְʱ��#��ְʱ��#ְλ#��ע','d.ddlName as d#a.userName#a.logonName#a.logonPwd#b.ddlName as b#a.birthday#a.address#a.contactTel#a.email#a.mobile#e.ddlName as e#a.onDutyDate#a.offDutyDate#c.ddlName as c#a.remark');
  


###############################################################################################################################################

#���˵����������ܣ�
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'aa','0','������ʩά������','','basic','������ʩά��������ڵ�','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ab','aa','�����豸����','../equapment/equapmentIndex.jsp','basic','�����豸����','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ac','aa','�豸У׼����','../equapment/adjustIndex.jsp','basic','�豸У׼����','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ad','aa','�豸���üƻ�','../equapment/elecDevicePlanAction_home.do','basic','�豸���üƻ�','3',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ae','0','��������ͼֽ����','','basic','������ʩά��������ڵ�','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'af','ae','����ͼֽ����','../dataChart/elecFileUploadAction_home.do','basic','����ͼֽ����','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ag','0','վ���豸���й���','','basic','������ʩά��������ڵ�','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ah','ag','վ�������Ϣ','../siteEquapment/siteInfoIndex.jsp','basic','������ʩά��������ڵ�','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ai','ag','�������','../siteEquapment/siteRunIndex.jsp','basic','������ʩά��������ڵ�','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'aj','ag','ά�����','../siteEquapment/siteMaintainIndex.jsp','basic','������ʩά��������ڵ�','3',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ak','0','���̨��������','','basic','���̨����������ڵ�','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'al','ak','��������Ϣ����','../building/buildingIndex.jsp','basic','��������Ϣ����','1',TRUE );
#���˵���ϵͳ����
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'am','0','ϵͳ����','','system','ϵͳ������ڵ�','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'an','am','�û�����','../system/elecUserAction_home.do','system','�û�����','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ao','am','��ɫ����','../system/elecRoleAction_home.do','system','��ɫ����','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ap','am','���м��','../system/elecCommonMsgAction_home.do','system','���м��','3',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'aq','am','�����ֵ�','../system/elecSystemDDLAction_home.do','system','�����ֵ�','4',TRUE );

#���˵������̹���
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ar','0','���̹���','','workflow','���̹�����ڵ�','0',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'as','ar','���̲������','../workflow/elecWorkflowAction_deployHome.do','workflow','���̲������','1',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'at','ar','����ִ�й���������','../workflow/elecWorkflowAction_taskGroupHome.do','workflow','����ִ�й���','2',TRUE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'au','ar','����ִ�й�����������','../workflow/elecWorkflowAction_taskHome.do','workflow','����ִ�й���','3',TRUE );


#�û�����
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fa','0','�û�����','','user','�û�������ڵ�','0',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fb','fa','����','/system/elecUserAction_add.do','user','�û�����','1',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fc','fa','����','/system/elecUserAction_save.do','user','�û�����','2',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fd','fa','�༭','/system/elecUserAction_edit.do','user','�û��༭','3',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fe','fa','ɾ��','/system/elecUserAction_delete.do','user','�û�ɾ��','4',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ff','fa','��������','/system/elecExportFieldsAction_setExportFields.do','user','��������','5',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fg','fa','����excel','/system/elecUserAction_exportExcel.do','user','��������','6',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fh','fa','excel����ҳ��','/system/elecUserAction_importPage.do','user','excel����ҳ��','7',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fi','fa','excel����','/system/elecUserAction_importData.do','user','excel����','8',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fj','fa','��Աͳ��(��λ)','/system/elecUserAction_chartUser.do','user','��Աͳ��(��λ)','9',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'fk','fa','��Աͳ��(�Ա�)','/system/elecUserAction_chartUserFCF.do','user','��Աͳ��(�Ա�)','10',FALSE  );


#��ɫ����
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'ga','0','��ɫ����','','role','��ɫ������ڵ�','0',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'gb','ga','�༭','/system/elecRoleAction_edit.do','role','��ɫ�༭','1',FALSE );
INSERT INTO elec_popedom(id,pId,NAME,page,generatemenu,description,orderby,ismenu) VALUES( 'gc','ga','����','/system/elecRoleAction_save.do','role','��ɫ����','2',FALSE );

������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������







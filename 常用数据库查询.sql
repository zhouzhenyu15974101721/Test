--�û�������Ϣ��ѯ------------------------------------------
SELECT * FROM URMTPINF WHERE MBL_NO='15874074500';
SELECT * FROM URMTPINF WHERE MBL_NO='13808468343';
SELECT * FROM URMTPINF WHERE USR_NO='1645392';
SELECT * FROM URMTPINF WHERE USR_PROV='14';

SELECT * FROM URMTOPER WHERE USR_OPR_ID='13667319020'

--���˻���Ϣ��-------------------------------------------------
SELECT * FROM ACMTACBL WHERE USR_NO='100000005300'
--��֧��ϸ
select * from ACMTCDDT where usr_no=  mbl_no='15874074500'

--�̻�������Ϣ��ѯ--------------------------------------------
SELECT * FROM URMTMINF WHERE MERC_PROV='12'
SELECT * FROM URMTMINF WHERE MERC_ID='888009941120001'

--�û�Э�������Ϣ��ѯ---------------------------------------
SELECT * FROM URMTAGRI WHERE USR_NO='1645461' ORDER BY TM_SMP DESC
SELECT * FROM URMTAGRI WHERE AGR_TYP='10011'
SELECT * FROM URMTAGRI WHERE AGR_NO='10011100000000145142'

--�����ػ�����Ϣ��ѯ------------------------------------------
SELECT * FROM CMMTPCOP 
SELECT * FROM CMMTCCOP 

--�ֻ��Ŷ�--------------------------------------------------
SELECT * FROM CMMTMBST--�ƶ��Ŷ�
SELECT * FROM CMMTMDNTN--�����Ŷ�
SELECT * FROM CMMTCNTNM--Я��ת��

--��Ϣ����--------------------------------------------------
SELECT * FROM PAYADM.CMMTMSG--��Ϣ���������Ϣ��
SELECT * FROM CMMTBANSEQ--ͼƬ��ű�
SELECT * FROM CMMTMSGDEL--ɾ������Ϣ��¼��
SELECT * FROM CMMTMSGMBL--���ֻ��ű�

--��ȫ��֤--------------------------------------------------
--��ȫ��֤�����ˮ��
SELECT * FROM PAYADM.RRCTHRAUTH WHERE CUS_NM='���ĺ�'
--��Σ����
SELECT * FROM PAYADM.RRCTHRINF

--����-------------------------------------------------------
--Ⱥ�����������α�
SELECT * FROM SMSTSUBBAT 
--Ⱥ���������α�
SELECT * FROM SMSTBAT 
--���ж��ű�
SELECT * FROM SMSTSMMO WHERE SMS_CD='RPM028' ORDER BY TM_SMP desc
SELECT * FROM SMSTSMMO WHERE SMS_CD='RPM028' ORDER BY TM_SMP desc
AND  MBL_NO='18874948159' order by tm_SMP desc
SELECT * FROM SMSTSMMO WHERE SMS_CD='MKM006' AND  MBL_NO='18874948159' order by tm_SMP desc
--ģ��
SELECT * FROM SMSTTMPS WHERE SMS_CD  IN ('RPM028','MKMHMA01') 
SELECT * FROM SMSTTMPS WHERE SMS_CD  IN ('MKM803','MKM006','CMM027') 

--���Ų�����PAYADM�û�
SELECT * FROM URMTOPCD WHERE OP_CD ='1043';

--����--------------------------------------------------------
SELECT * FROM CMMTSTSC WHERE TX_CD='0015547'--�û�״̬���
--�����¼��ˮ
SELECT * FROM PTSTSSOJNL ORDER BY TM_SMP DESC
SELECT * FROM URMTKEY WHERE TX_CD='PUG0010091'
--������
SELECT * FROM PUBTMSG WHERE MSG_CD='URM00001'
SELECT * FROM PUBTMSG WHERE MSG_CD LIKE 'URM001%' AND MSG_INF LIKE '%��ʡ%'
SELECT * FROM PUBTMSG WHERE MSG_CD LIKE 'URM%' AND MSG_INF LIKE '%��ʡ%'

--�����������ϴ�����
SELECT * FROM FILTURLCFG WHERE BUS_CNL='HPSPS'
--������
SELECT * FROM PUBTTMS WHERE MSG_CD LIKE 'URM70612%'  AND MSG_INF LIKE '%REDIS%'
SELECT * FROM PUBTMSG WHERE MSG_CD LIKE 'URM%'  AND MSG_INF LIKE '%ϵͳ%'
--�������Ա�
SELECT * FROM PUBTTXIF WHERE TX_CD LIKE '001556%' ORDER BY TX_CD

DELETE FROM PUBTTXIF WHERE TX_CD='0015564'
--��д����
SELECT * FROM PUBTTXRW WHERE TX_CD IN ('0031382','0032001','0015003','0015053')
SELECT * FROM PUBTTXRW WHERE AP_MMO='URM'
SELECT * FROM PUBTTXRW WHERE MOD_NAM='URM'

--��ѯ�����ļ�BSP��ϸ����
SELECT * FROM URMTBPMCHF ORDER BY TM_SMP DESC

--����BIN��
SELECT * FROM PWMTCBIN WHERE CRD_AC_TYP='0' AND CRD_ORG_NM='ũҵ����'

--PTS�ⲿ��ַ���ñ�
SELECT * FROM PTSTWEBCONFIG  WHERE OUT_URL LIKE '%transaction_info.xhtml%'

--��ѯ
SELECT * FROM URMTPVP

--�����¼
SELECT * FROM URMTCPIF

--UI����Ա��Ϣ��
SELECT * FROM CMMTOPER

insert into SMSTTMPS (SMS_CD, PRV_CD, SM_TYP, SMS_MO, SMS_CLS, SMS_TMP, REP_FLD, ID_KEY, PSW_FLG, EFF_FLG, EFF_DT, EXP_DT, EFF_TM, EXP_TM, UPD_DT, UPD_TLR, RMK, TM_SMP, STS_OBJ_SVR, STS_TX_CD, ADD_SMS_CD, ADD_SMS_FLG, MSG_TYPE, ADDSMS_PRVCD, MSG_LVL, STS_FLG, SMS_TMP_DX, REP_FLD_DX, SMS_TMP_LT, REP_FLD_LT)
values ('MKMHMA01', '99', '0', 'MKM', ' ', '���ĺ���[$][$]��������1���Ͱ��ֽ�����TA�����˵��[$]���¼�Ͱ��ͻ��˻�������������ȡ[$]���й��ƶ� �Ͱ�֧����', 'CUS_NM|MBL_NO|THEME|URL', '4030000000', '1', '1', '20171218', '99991231', '123340', '235959', '20171218', 'CS90006', ' ', '20171218123513', ' ', ' ', ' ', '0', '1', '99', '1', '0', '���й��ƶ� �Ͱ�֧�������ĺ���[$][$]��������1���Ͱ��ֽ�����TA�����˵��[$]���¼�Ͱ��ͻ��˻�������������ȡ[$]', 'CUS_NM|MBL_NO|THEME|URL', '���й��ƶ� �Ͱ�֧�������ĺ���[$][$]��������1���Ͱ��ֽ�����TA�����˵��[$]���¼�Ͱ��ͻ��˻�������������ȡ[$]', 'CUS_NM|MBL_NO|THEME|URL');

insert into SMSTTMPS (SMS_CD, PRV_CD, SM_TYP, SMS_MO, SMS_CLS, SMS_TMP, REP_FLD, ID_KEY, PSW_FLG, EFF_FLG, EFF_DT, EXP_DT, EFF_TM, EXP_TM, UPD_DT, UPD_TLR, RMK, TM_SMP, STS_OBJ_SVR, STS_TX_CD, ADD_SMS_CD, ADD_SMS_FLG, MSG_TYPE, ADDSMS_PRVCD, MSG_LVL, STS_FLG, SMS_TMP_DX, REP_FLD_DX, SMS_TMP_LT, REP_FLD_LT)
values ('RPM028', '99', '0', 'RPM', ' ', '�𾴵Ŀͻ�������[$]֧���ɹ�������֧��[$]Ԫ������[$]������ǰ�ֽ��˻����[$]Ԫ���Ͱ�ȯ�˻����[$]Ԫ���й��ƶ����Ͱ�֧����', 'MERC_ORD_NO|ORD_AMT|AMT_ITEM|BAL|CHK_AMT', '4030000000', '0', '1', '20110331', '99991231', '055815', '235959', '20170804', 'CS90018', '֧���ɹ���ʾ', '20170804175033', 'OSMSPUB1', 'SMS4033001', 'SMS601', '0', '2', '99', '3', '0', '���Ͱ�֧�����𾴵Ŀͻ�������[$]֧���ɹ�������֧��[$]Ԫ������[$]������ǰ�ֽ��˻����[$]Ԫ���Ͱ�ȯ�˻����[$]Ԫ', 'MERC_ORD_NO|ORD_AMT|AMT_ITEM|BAL|CHK_AMT', '���Ͱ�֧�����𾴵Ŀͻ�������[$]֧���ɹ�������֧��[$]Ԫ������[$]������ǰ�ֽ��˻����[$]Ԫ���Ͱ�ȯ�˻����[$]Ԫ', 'MERC_ORD_NO|ORD_AMT|AMT_ITEM|BAL|CHK_AMT');


UPDATE SMSTTMPS SET SMS_TMP='���й��ƶ� �Ͱ�֧�������ĺ���[$][$]��������1���Ͱ��ֽ�����TA�����˵��[$]���¼�Ͱ��ͻ��˻�������������ȡ[$]',REP_FLD='CUS_NM|MBL_NO|THEME|URL',
SMS_TMP_dx='���й��ƶ� �Ͱ�֧�������ĺ���[$][$]��������1���Ͱ��ֽ�����TA�����˵��[$]���¼�Ͱ��ͻ��˻�������������ȡ[$]',
SMS_TMP_lt='���й��ƶ� �Ͱ�֧�������ĺ���[$][$]��������1���Ͱ��ֽ�����TA�����˵��[$]���¼�Ͱ��ͻ��˻�������������ȡ[$]'
 WHERE SMS_CD='MKMHMA01'

UPDATE SMSTTMPS SET SMS_TMP='�𾴵Ŀͻ�������[$]֧���ɹ�������֧��[$]Ԫ������[$]���й��ƶ����Ͱ�֧����',REP_FLD='MERC_ORD_NO|ORD_AMT|AMT_ITEM',
SMS_TMP_lt='�𾴵Ŀͻ�������[$]֧���ɹ�������֧��[$]Ԫ������[$]���й��ƶ����Ͱ�֧����',REP_FLD_LT='MERC_ORD_NO|ORD_AMT|AMT_ITEM',
SMS_TMP_dx='�𾴵Ŀͻ�������[$]֧���ɹ�������֧��[$]Ԫ������[$]���й��ƶ����Ͱ�֧����',REP_FLD_DX='MERC_ORD_NO|ORD_AMT|AMT_ITEM'
WHERE SMS_CD='RPM028'

SELECT * FROM PUBTHLP WHERE FLD_NM='BUS_TYP' AND fld_val='C004' ORDER BY TM_SMP DESC
SELECT * FROM PUBTHLP WHERE FLD_NM='TRADE_TYPE' ORDER BY TM_SMP DESC
--΢��
--��Ϣģ��
SELECT * FROM CMP_TEMPLATE WHERE ID IN ('42','62','82','83','101','111','112','21','122','123','124','125','121')





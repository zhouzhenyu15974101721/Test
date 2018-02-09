--用户基本信息查询------------------------------------------
SELECT * FROM URMTPINF WHERE MBL_NO='15874074500';
SELECT * FROM URMTPINF WHERE MBL_NO='13808468343';
SELECT * FROM URMTPINF WHERE USR_NO='1645392';
SELECT * FROM URMTPINF WHERE USR_PROV='14';

SELECT * FROM URMTOPER WHERE USR_OPR_ID='13667319020'

--主账户信息表-------------------------------------------------
SELECT * FROM ACMTACBL WHERE USR_NO='100000005300'
--收支明细
select * from ACMTCDDT where usr_no=  mbl_no='15874074500'

--商户基本信息查询--------------------------------------------
SELECT * FROM URMTMINF WHERE MERC_PROV='12'
SELECT * FROM URMTMINF WHERE MERC_ID='888009941120001'

--用户协议基本信息查询---------------------------------------
SELECT * FROM URMTAGRI WHERE USR_NO='1645461' ORDER BY TM_SMP DESC
SELECT * FROM URMTAGRI WHERE AGR_TYP='10011'
SELECT * FROM URMTAGRI WHERE AGR_NO='10011100000000145142'

--归属地基本信息查询------------------------------------------
SELECT * FROM CMMTPCOP 
SELECT * FROM CMMTCCOP 

--手机号段--------------------------------------------------
SELECT * FROM CMMTMBST--移动号段
SELECT * FROM CMMTMDNTN--异网号段
SELECT * FROM CMMTCNTNM--携号转昂

--消息公告--------------------------------------------------
SELECT * FROM PAYADM.CMMTMSG--消息公告基本信息表
SELECT * FROM CMMTBANSEQ--图片序号表
SELECT * FROM CMMTMSGDEL--删除的消息记录表
SELECT * FROM CMMTMSGMBL--绑定手机号表

--安全认证--------------------------------------------------
--安全认证审核流水表
SELECT * FROM PAYADM.RRCTHRAUTH WHERE CUS_NM='阳文浩'
--高危级别
SELECT * FROM PAYADM.RRCTHRINF

--短信-------------------------------------------------------
--群发短信子批次表
SELECT * FROM SMSTSUBBAT 
--群发短信批次表
SELECT * FROM SMSTBAT 
--下行短信表
SELECT * FROM SMSTSMMO WHERE SMS_CD='RPM028' ORDER BY TM_SMP desc
SELECT * FROM SMSTSMMO WHERE SMS_CD='RPM028' ORDER BY TM_SMP desc
AND  MBL_NO='18874948159' order by tm_SMP desc
SELECT * FROM SMSTSMMO WHERE SMS_CD='MKM006' AND  MBL_NO='18874948159' order by tm_SMP desc
--模板
SELECT * FROM SMSTTMPS WHERE SMS_CD  IN ('RPM028','MKMHMA01') 
SELECT * FROM SMSTTMPS WHERE SMS_CD  IN ('MKM803','MKM006','CMM027') 

--短信操作码PAYADM用户
SELECT * FROM URMTOPCD WHERE OP_CD ='1043';

--其他--------------------------------------------------------
SELECT * FROM CMMTSTSC WHERE TX_CD='0015547'--用户状态检查
--单点登录流水
SELECT * FROM PTSTSSOJNL ORDER BY TM_SMP DESC
SELECT * FROM URMTKEY WHERE TX_CD='PUG0010091'
--错误码
SELECT * FROM PUBTMSG WHERE MSG_CD='URM00001'
SELECT * FROM PUBTMSG WHERE MSG_CD LIKE 'URM001%' AND MSG_INF LIKE '%本省%'
SELECT * FROM PUBTMSG WHERE MSG_CD LIKE 'URM%' AND MSG_INF LIKE '%本省%'

--服务器现在上传配置
SELECT * FROM FILTURLCFG WHERE BUS_CNL='HPSPS'
--错误码
SELECT * FROM PUBTTMS WHERE MSG_CD LIKE 'URM70612%'  AND MSG_INF LIKE '%REDIS%'
SELECT * FROM PUBTMSG WHERE MSG_CD LIKE 'URM%'  AND MSG_INF LIKE '%系统%'
--交易属性表
SELECT * FROM PUBTTXIF WHERE TX_CD LIKE '001556%' ORDER BY TX_CD

DELETE FROM PUBTTXIF WHERE TX_CD='0015564'
--读写分离
SELECT * FROM PUBTTXRW WHERE TX_CD IN ('0031382','0032001','0015003','0015053')
SELECT * FROM PUBTTXRW WHERE AP_MMO='URM'
SELECT * FROM PUBTTXRW WHERE MOD_NAM='URM'

--查询对账文件BSP明细处理
SELECT * FROM URMTBPMCHF ORDER BY TM_SMP DESC

--银行BIN表
SELECT * FROM PWMTCBIN WHERE CRD_AC_TYP='0' AND CRD_ORG_NM='农业银行'

--PTS外部地址配置表
SELECT * FROM PTSTWEBCONFIG  WHERE OUT_URL LIKE '%transaction_info.xhtml%'

--查询
SELECT * FROM URMTPVP

--单点登录
SELECT * FROM URMTCPIF

--UI操作员信息表
SELECT * FROM CMMTOPER

insert into SMSTTMPS (SMS_CD, PRV_CD, SM_TYP, SMS_MO, SMS_CLS, SMS_TMP, REP_FLD, ID_KEY, PSW_FLG, EFF_FLG, EFF_DT, EXP_DT, EFF_TM, EXP_TM, UPD_DT, UPD_TLR, RMK, TM_SMP, STS_OBJ_SVR, STS_TX_CD, ADD_SMS_CD, ADD_SMS_FLG, MSG_TYPE, ADDSMS_PRVCD, MSG_LVL, STS_FLG, SMS_TMP_DX, REP_FLD_DX, SMS_TMP_LT, REP_FLD_LT)
values ('MKMHMA01', '99', '0', 'MKM', ' ', '您的好友[$][$]给您发了1个和包现金红包，TA想对您说：[$]请登录和包客户端或点击以下链接领取[$]【中国移动 和包支付】', 'CUS_NM|MBL_NO|THEME|URL', '4030000000', '1', '1', '20171218', '99991231', '123340', '235959', '20171218', 'CS90006', ' ', '20171218123513', ' ', ' ', ' ', '0', '1', '99', '1', '0', '【中国移动 和包支付】您的好友[$][$]给您发了1个和包现金红包，TA想对您说：[$]请登录和包客户端或点击以下链接领取[$]', 'CUS_NM|MBL_NO|THEME|URL', '【中国移动 和包支付】您的好友[$][$]给您发了1个和包现金红包，TA想对您说：[$]请登录和包客户端或点击以下链接领取[$]', 'CUS_NM|MBL_NO|THEME|URL');

insert into SMSTTMPS (SMS_CD, PRV_CD, SM_TYP, SMS_MO, SMS_CLS, SMS_TMP, REP_FLD, ID_KEY, PSW_FLG, EFF_FLG, EFF_DT, EXP_DT, EFF_TM, EXP_TM, UPD_DT, UPD_TLR, RMK, TM_SMP, STS_OBJ_SVR, STS_TX_CD, ADD_SMS_CD, ADD_SMS_FLG, MSG_TYPE, ADDSMS_PRVCD, MSG_LVL, STS_FLG, SMS_TMP_DX, REP_FLD_DX, SMS_TMP_LT, REP_FLD_LT)
values ('RPM028', '99', '0', 'RPM', ' ', '尊敬的客户：订单[$]支付成功，本次支付[$]元，其中[$]。您当前现金账户余额[$]元，和包券账户余额[$]元【中国移动　和包支付】', 'MERC_ORD_NO|ORD_AMT|AMT_ITEM|BAL|CHK_AMT', '4030000000', '0', '1', '20110331', '99991231', '055815', '235959', '20170804', 'CS90018', '支付成功提示', '20170804175033', 'OSMSPUB1', 'SMS4033001', 'SMS601', '0', '2', '99', '3', '0', '【和包支付】尊敬的客户：订单[$]支付成功，本次支付[$]元，其中[$]。您当前现金账户余额[$]元，和包券账户余额[$]元', 'MERC_ORD_NO|ORD_AMT|AMT_ITEM|BAL|CHK_AMT', '【和包支付】尊敬的客户：订单[$]支付成功，本次支付[$]元，其中[$]。您当前现金账户余额[$]元，和包券账户余额[$]元', 'MERC_ORD_NO|ORD_AMT|AMT_ITEM|BAL|CHK_AMT');


UPDATE SMSTTMPS SET SMS_TMP='【中国移动 和包支付】您的好友[$][$]给您发了1个和包现金红包，TA想对您说：[$]请登录和包客户端或点击以下链接领取[$]',REP_FLD='CUS_NM|MBL_NO|THEME|URL',
SMS_TMP_dx='【中国移动 和包支付】您的好友[$][$]给您发了1个和包现金红包，TA想对您说：[$]请登录和包客户端或点击以下链接领取[$]',
SMS_TMP_lt='【中国移动 和包支付】您的好友[$][$]给您发了1个和包现金红包，TA想对您说：[$]请登录和包客户端或点击以下链接领取[$]'
 WHERE SMS_CD='MKMHMA01'

UPDATE SMSTTMPS SET SMS_TMP='尊敬的客户：订单[$]支付成功，本次支付[$]元，其中[$]【中国移动　和包支付】',REP_FLD='MERC_ORD_NO|ORD_AMT|AMT_ITEM',
SMS_TMP_lt='尊敬的客户：订单[$]支付成功，本次支付[$]元，其中[$]【中国移动　和包支付】',REP_FLD_LT='MERC_ORD_NO|ORD_AMT|AMT_ITEM',
SMS_TMP_dx='尊敬的客户：订单[$]支付成功，本次支付[$]元，其中[$]【中国移动　和包支付】',REP_FLD_DX='MERC_ORD_NO|ORD_AMT|AMT_ITEM'
WHERE SMS_CD='RPM028'

SELECT * FROM PUBTHLP WHERE FLD_NM='BUS_TYP' AND fld_val='C004' ORDER BY TM_SMP DESC
SELECT * FROM PUBTHLP WHERE FLD_NM='TRADE_TYPE' ORDER BY TM_SMP DESC
--微信
--消息模板
SELECT * FROM CMP_TEMPLATE WHERE ID IN ('42','62','82','83','101','111','112','21','122','123','124','125','121')





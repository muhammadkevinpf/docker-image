INSERT INTO pd_pruladys.parameter_sftp (sftp_name,hostname,port,username,"password",homepath,created_date,created_by,last_updated_date,last_updated_by,is_active) VALUES 
('CLAIM_UPLOAD_','10.170.238.6',22,'madhyasti','P@ssw0rd10','/Prudential-New/CLAIM/OTHERS/PRULADYS_DEV/','2020-11-27 12:06:43.565','system',NULL,NULL,true)
,('BILLING_UPLOAD_','securetransfer.prudential.co.id',NULL,'siswandic','S1sw4nd$','/PRU/PD/UOB LACC/Outgoing/','2020-11-03 11:31:31.863','system',NULL,NULL,true)
,('CLAIM_UPLOAD','10.170.49.156',22,'jbossadm','38C2558734CD24CD4FF45321F94A9B92','/home/jbossadm/pd/pruladys/claim/','2020-11-27 12:06:43.565','system',NULL,NULL,true)
,('DOWNLOAD_RESULT','10.170.49.156',22,'jbossadm','38C2558734CD24CD4FF45321F94A9B92','/home/jbossadm/pd/pruladys/download/','2020-11-27 12:06:43.565','system',NULL,NULL,true)
,('BILLING_UPLOAD','10.170.49.156',22,'jbossadm','38C2558734CD24CD4FF45321F94A9B92','/home/jbossadm/pd/pruladys/incoming/','2020-11-27 12:06:43.565','system',NULL,NULL,true)
;
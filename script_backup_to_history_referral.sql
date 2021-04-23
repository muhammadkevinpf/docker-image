-- check data master

select count(1) from pd_activity_management.referral_master;

 

-- insert from master to history

INSERT INTO pd_activity_management.referral_master_history(referral_code, referral_name, channel, rm_psid, branch_office_code, created_date, created_by, active_flag, updated_by, updated_date)
select referral_code, referral_name, channel, rm_psid, branch_office_code, created_date, created_by, active_flag, 'system', now()
from pd_activity_management.referral_master;

 

-- check data history

select count(1) from pd_activity_management.referral_master_history;

--trucate data master

truncate pd_activity_management.referral_master;
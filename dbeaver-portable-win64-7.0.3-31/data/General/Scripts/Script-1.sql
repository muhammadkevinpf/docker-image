delete 
from raw_billing_detail rbd 
where rbd.id_billing_upload in (
	select bu.id_billing_upload from billing_upload bu 
	where bu.id_periode = 52)


delete 
from billing_file 
where id_billing_upload in (
	select bu.id_billing_upload from billing_upload bu 
	where bu.id_periode = 52)


delete from billing_upload bu 
	where bu.id_periode = 52


delete 
from billing b 
where b.id_billing_payment in (
	select b.id_billing_payment from billing_payment bp 
	where bp.id_periode = 52
)

delete from billing_payment bp 
	where bp.id_periode = 52
	
	
	update pd_pruladys.master_participant set id_number = '3603124512840008'  where id_number = '3603125612840006';
update pd_pruladys.master_participant set id_number = '3277026005880009'  where id_number = '880513310412';
update pd_pruladys.master_participant set id_number = '3174064509790001'  where id_number = '0953034509797029';
update pd_pruladys.master_participant set id_number = '3173064305690007'  where id_number = '0954044305690332';
update pd_pruladys.master_participant set id_number = '3173035709840004'  where id_number = '0951025709844020';
update pd_pruladys.master_participant set id_number = '3171011602770011'  where id_number = '0950016602772010';
	
	
	
select mp.account_name_1  , count(mp.account_name_1 ) 
from master_participant mp 
group by mp.account_name_1 
having count(mp.account_name_1 ) > 1;

select * from pd_pruladys.master_participant mp where mp.participant_number in (select mp.participant_number from pd_pruladys.master_participant mp group by mp.participant_number having count(mp.participant_number ) > 1)

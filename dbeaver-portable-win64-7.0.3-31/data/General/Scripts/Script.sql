select mp.* from master_periode mp 
where periode in ('202103', '202104', '202105', '202106', '202107');

select *
from billing b 
where b.id_billing_payment in (
	select id_billing_payment from billing_payment bp 
	where bp.id_periode in (
		select mp.id_periode from master_periode mp 
		where periode in ('202104')	
	)
)

delete 
from raw_billing_detail rbd 
where rbd.id_billing_upload in (
	select bu.id_billing_upload from billing_upload bu 
	where bu.id_periode in (51, 52, 53, 54, 55)
)

delete 
from billing_file 
where id_billing_upload in (
	select bu.id_billing_upload from billing_upload bu 
	where bu.id_periode in (51, 52, 53, 54, 55)
)

delete from billing_upload bu 
	where bu.id_periode in (51, 52, 53, 54, 55)


delete 
from billing b 
where b.id_billing_payment in (
	select b.id_billing_payment from billing_payment bp 
	where bp.id_periode in (51, 52, 53, 54, 55)
)

delete from billing_payment bp 
	where bp.id_periode in (51, 52, 53, 54, 55)
	
-------------------------------------------------------------

select *
from master_participant mp 
where mp.id_number = '3204115706940004'

select * from pd_pruladys.master_participant mp where mp.account_name_1 = 'ELLA SUSYANTI'
	
	
select *
from master_participant mp 
where mp.id_number in ('1771062503660003', '7326014106870005', '1803026410940003', '31750360038000005'
,'0953066903797024', '1256285911740001', '936798255422000', '327602207840003'
,'3216085701940009', '1150036109790002')

-- new
select *
from master_participant mp 
where mp.id_number in ('1771066503660001','5207084106870001','1805186410940003'
,'3175036003800005','3174066903790004','3578275911740002','3273176004770002'
,'3276026007840009','3206265701940002','3374036109790002','3204115706940004','3273155811870015')


select *
from pd_pruladys.billing b 
where id_participant = 334

--
--delete from history_participant
--where id_number in ('1771066503660001','5207084106870001','1805186410940003'
--,'3174066903790004','3578275911740002','3273176004770002'
--,'3276026007840009','3206265701940002','3374036109790002','3204115706940004','3273155811870015')
--
--delete from master_participant 
--where id_number in ('1771066503660001','5207084106870001','1805186410940003'
--,'3174066903790004','3578275911740002','3273176004770002'
--,'3276026007840009','3206265701940002','3374036109790002','3204115706940004','3273155811870015')

update 
master_participant set id_number = ''
where id_number = ''

select *
from pd_pruladys.master_participant mp 
where mp.participant_number in ('3204115706940004', '3273155811870015')
	
	
	
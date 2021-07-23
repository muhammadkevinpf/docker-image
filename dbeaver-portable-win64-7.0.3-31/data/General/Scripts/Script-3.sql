SELECT 
	agent_number,
	agent_type,
	date_of_birth,
	office_name,
	terminated_date,
	agent_id_number,
	agent_mobilephone1
FROM ods.agent agent
JOIN ods.client client ON agent.client_number = client.client_number
JOIN ods.region region ON region.office_code = agent.office_code
WHERE agent.agent_type IN ('FC', 'MF')
	AND agent.terminated_date IS NULL
--AND region.office_name not LIKE 'SCB%'
and agent_number = '81000164'
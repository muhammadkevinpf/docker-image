SELECT a."ProposalCd",
b."SubmissionDate", b."AgentCd", e."ProductDesc"
FROM pd_report."SqsSummary" a 
JOIN proposal."Proposal" b ON a."ProposalCd" = b."ProposalCd" 
join pd_report."SqsProductChoice" e on a."SqsSummaryCd" = e."SqsSummaryCd"
where b."AgentCd" = '81000164' and b."SubmissionDate" = '2021-06-21'::date 
order by b."SubmissionDate" desc

SELECT b."Firstname", a."RoleCd", b."DOB"
FROM proposal."ProposalClient" a 
JOIN pd_client."Client" b ON a."ClientCd"=b."ClientCd" 
WHERE a."ProposalCd"='5900143825' and a."RoleCd" in ('01', 'OW')

select * from report_spaj.report_ga ss where ss.spaj_number like '5%' order by id desc

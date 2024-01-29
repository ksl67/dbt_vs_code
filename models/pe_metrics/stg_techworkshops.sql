SELECT 
  "workshops"."Name" AS "Subject", 
  "workshops"."CreatedDate" AS "Date", 
  "attendees"."Email" AS "Email", 
  "attendees"."CompanyOrAccount" AS "Partner" ,
  CASE 
    WHEN ("workshops"."Name" like 'Partner%' OR "workshops"."Name" like 'DG%') THEN right("workshops"."Name",6)
    ELSE CONCAT(substr("workshops"."Name",6,2),'-','01')
    END AS "Parsed_Date", 
  left("workshops"."CreatedDate",4) AS "Year" 

FROM 
    {{source('sfdc','SFDC_TechnicalWorkshopAttendees')}} AS "attendees" 

INNER JOIN 
    {{source('sfdc','SFDC_TechnicalWorkshops')}}  AS "workshops" 
    ON "attendees"."CampaignId"="workshops"."Id"
    
WHERE "attendees"."Email" not like '%matillion%'

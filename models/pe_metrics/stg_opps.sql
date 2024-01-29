SELECT 
  "opps"."Account_Name_text__c" AS "Account_Name_text__c", 
  "opps"."Name" AS "opps_Name", 
  case when "Account_Name_text__c" = 'Seattle Mariners' 
    then 'Data Clymer, LLC' 
    else "accts2"."Name" end AS "Partner_Name",
  "opps"."Deal_Reg_Date__c" AS "Deal_Reg_Date__c", 
  "opps"."StageName" AS "StageName", 
  case when "opps"."Partner_Account_Manager_Email__c" = 'lotte.vanengelen@matillion.com' and 
    "opps"."Deal_Reg_Date__c" > '2023-07-01' then 'joe.steadman@matillion.com' else "opps"."Partner_Account_Manager_Email__c" end
    AS "Partner_Account_Manager_Email__c", 
  "opps"."CloseDate" AS "CloseDate", 
  "opps"."New_ARR_Comp__c" AS "New_ARR_Comp__c", 
  "opps"."Age__c" AS "Age__c", 
  "opps"."CreatedDate" AS "CreatedDate", 
  "opps"."Owner_Reporting_Region__c" AS "Owner_Reporting_Region__c", 
  "opps"."Opportunity_Owner_Name__c" AS "Opportunity_Owner_Name", 
  "opps"."Account_Owner_Manager_Name__c" AS "Account_Owner_Manager_Name", 
  "opps"."Account_Owner_Manager_Email__c" AS "Account_Owner_Manager_Email__c", 
  "opps"."Record_Type_Name__c" AS "Record_Type_Name__c", 
  "opps"."Type" AS "Type", 
  "opps"."wi__Associated_Partner__c" AS "wi__Associated_Partner__c", 
  "accts"."ARR__c" AS "Current_ARR", 
  "accts"."Status__c" AS "accts_Status",
  case when "Current_ARR" > 0 then 'Active'
    when "Current_ARR" = 0.00 then 'Churned'
    else null end as "Active_Churned",
  case when "Deal_Reg_Date__c" between '2020-02-01' and '2020-05-01' then '2020-Q1'
    when "Deal_Reg_Date__c" between '2020-05-01' and '2020-08-01' then '2020-Q2'
    when "Deal_Reg_Date__c" between '2020-08-01' and '2020-11-01' then '2020-Q3'
    when "Deal_Reg_Date__c" between '2020-11-01' and '2021-02-01' then '2020-Q4' 
    when "Deal_Reg_Date__c" between '2021-02-01' and '2021-05-01' then '2021-Q1'
    when "Deal_Reg_Date__c" between '2021-05-01' and '2021-08-01' then '2021-Q2'
    when "Deal_Reg_Date__c" between '2021-08-01' and '2021-11-01' then '2021-Q3'
    when "Deal_Reg_Date__c" between '2021-11-01' and '2022-02-01' then '2021-Q4'
    when "Deal_Reg_Date__c" between '2022-02-01' and '2022-05-01' then '2022-Q1'
    when "Deal_Reg_Date__c" between '2022-05-01' and '2022-08-01' then '2022-Q2'
    when "Deal_Reg_Date__c" between '2022-08-01' and '2022-11-01' then '2022-Q3'
    when "Deal_Reg_Date__c" between '2022-11-01' and '2023-02-01' then '2022-Q4' 
    when "Deal_Reg_Date__c" between '2023-02-01' and '2023-05-01' then '2023-Q1'
    when "Deal_Reg_Date__c" between '2023-05-01' and '2023-08-01' then '2023-Q2'
    when "Deal_Reg_Date__c" between '2023-08-01' and '2023-11-01' then '2023-Q3'
    when "Deal_Reg_Date__c" between '2023-11-01' and '2024-02-01' then '2023-Q4'
    else null end
    AS "PAM_Opp_Quarter__c", 
  case when "StageName" = '8 - Closed Won' and "CloseDate" between '2020-08-01' and '2020-11-01' then '2020-Q3'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2020-11-01' and '2021-02-01' then '2020-Q4'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2021-02-01' and '2021-05-01' then '2021-Q1'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2021-05-01' and '2021-08-01' then '2021-Q2'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2021-08-01' and '2021-11-01' then '2021-Q3'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2021-11-01' and '2022-02-01' then '2021-Q4' 
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2022-02-01' and '2022-05-01' then '2022-Q1'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2022-05-01' and '2022-08-01' then '2022-Q2'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2022-08-01' and '2022-11-01' then '2022-Q3'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2022-11-01' and '2023-02-01' then '2022-Q4' 
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2023-02-01' and '2023-05-01' then '2023-Q1'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2023-05-01' and '2023-08-01' then '2023-Q2'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2023-08-01' and '2023-11-01' then '2023-Q3'
    when "StageName" = '8 - Closed Won' and "CloseDate" between '2023-11-01' and '2024-02-01' then '2023-Q4'
    else null end
    AS "PAM_Deal_Quarter", 
  case when "Owner_Reporting_Region__c" like '%NA%' then 'NORAM'
    when "Owner_Reporting_Region__c" like '%RoW%' then 'RoW' 
    when "Owner_Reporting_Region__c" like '%UKI%' then 'RoW' 
    else '' end
    AS "Region"
FROM {{source('sfdc','PartnerOpps_raw')}} AS "opps" 
     LEFT OUTER JOIN 
     {{ref('prd_partneraccounts')}} AS "accts" 
     ON "opps"."AccountId" = "accts"."Id"
     LEFT OUTER JOIN 
     {{ref('prd_partneraccounts')}} AS "accts2" 
     ON "opps"."wi__Associated_Partner__c" = "accts2"."Id"

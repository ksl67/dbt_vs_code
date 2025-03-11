SELECT 
  "cases"."Id" AS "cases_Id", 
  "cases"."IsDeleted" AS "IsDeleted", 
  "cases"."CaseNumber" AS "CaseNumber", 
  "cases"."ContactId" AS "ContactId", 
  "cases"."AccountId" AS "AccountId", 
  "cases"."Type" AS "Type", 
  "cases"."RecordTypeId" AS "RecordTypeId", 
  "cases"."Status" AS "Status", 
  "cases"."Reason" AS "Reason", 
  "cases"."Origin" AS "Origin", 
  "cases"."Subject" AS "Subject", 
  "cases"."Priority" AS "Priority", 
  "cases"."IsClosed" AS "IsClosed", 
  "cases"."ClosedDate" AS "ClosedDate", 
  "cases"."CurrencyIsoCode" AS "CurrencyIsoCode", 
  "cases"."OwnerId" AS "OwnerId", 
  "cases"."CreatedDate" AS "CreatedDate", 
  "cases"."CreatedById" AS "CreatedById", 
  "cases"."LastModifiedDate" AS "LastModifiedDate", 
  "cases"."LastModifiedById" AS "LastModifiedById", 
  "cases"."SystemModstamp" AS "SystemModstamp", 
  "cases"."ContactEmail" AS "ContactEmail", 
  "cases"."LastViewedDate" AS "LastViewedDate", 
  "cases"."LastReferencedDate" AS "LastReferencedDate", 
  "cases"."XBug_Source__c" AS "XBug_Source__c", 
  "cases"."Next_Update_Due__c" AS "Next_Update_Due__c", 
  "cases"."Currently_Assigned_To__c" AS "Currently_Assigned_To__c", 
  "cases"."Resolution__c" AS "Resolution__c", 
  "cases"."SLA_Reason__c" AS "SLA_Reason__c", 
  "cases"."SLA_Update_Frequency__c" AS "SLA_Update_Frequency__c", 
  "cases"."Case_Resolution__c" AS "Case_Resolution__c", 
  "cases"."Case_open_days__c" AS "Case_open_days__c", 
  "cases"."Date_Time_Opened__c" AS "Date_Time_Opened__c", 
  "cases"."Email_First_Sent_Date_Time__c" AS "Email_First_Sent_Date_Time__c", 
  "cases"."First_Response_Time__c" AS "First_Response_Time__c", 
  "cases"."Lead__c" AS "Lead__c", 
  "cases"."DevOps__c" AS "DevOps__c", 
  "cases"."Account_ARR__c" AS "Account_ARR__c", 
  "cases"."Account_Status__c" AS "Account_Status__c", 
  "cases"."Case_CC_List__c" AS "Case_CC_List__c", 
  "cases"."Most_Recent_Customer_Response__c" AS "Most_Recent_Customer_Response__c", 
  "cases"."Last_Sub_Status_Change__c" AS "Last_Sub_Status_Change__c", 
  "cases"."ImpartnerPRM__NotifyPartner__c" AS "ImpartnerPRM__NotifyPartner__c", 
  "cases"."ImpartnerPRM__PartnerAccount__c" AS "ImpartnerPRM__PartnerAccount__c", 
  "cases"."ImpartnerPRM__PartnerContact__c" AS "ImpartnerPRM__PartnerContact__c", 
  "cases"."ImpartnerPRM__PartnerLastModifiedDate__c" AS "ImpartnerPRM__PartnerLastModifiedDate__c", 
  "cases"."Partner__c" AS "Partner__c", 
  "cases"."System_Integrators__c" AS "System_Integrators__c", 
  "cases"."Case_Category__c" AS "Case_Category__c", 
  "cases"."Case_Subcategory__c" AS "Case_Subcategory__c", 
  "cases"."Case_Further_Subcategory__c" AS "Case_Further_Subcategory__c", 
  "cases"."Cloud_Platform__c" AS "Cloud_Platform__c", 
  "cases"."Matillion_Product__c" AS "Matillion_Product__c", 
  "cases"."Data_Quality_Complete__c" AS "Data_Quality_Complete__c", 
  "cases"."High_availability__c" AS "High_availability__c", 
  "cases"."Authentication__c" AS "Authentication__c", 
  "cases"."OpenID__c" AS "OpenID__c", 
  "cases"."Customer_Severity__c" AS "Customer_Severity__c", 
  "cases"."Jira_Infomation__c" AS "Jira_Infomation__c", 
  "cases"."Case_Description__c" AS "Case_Description__c", 
  "cases"."Mission_Critical_Support_Customer__c" AS "Mission_Critical_Support_Customer__c", 
  "cases"."PagerDuty_Email_for_Escalation__c" AS "PagerDuty_Email_for_Escalation__c", 
  "cases"."Classification_Case__c" AS "Classification_Case__c", 
  "cases"."New_Case_Time_since_opened__c" AS "New_Case_Time_since_opened__c", 
  "cases"."Post_First_Made_Date_Time__c" AS "Post_First_Made_Date_Time__c", 
  "cases"."First_Response_Time_Number_del__c" AS "First_Response_Time_Number_del__c", 
  "cases"."Data_Quality_Completed_Date_Time__c" AS "Data_Quality_Completed_Date_Time__c", 
  "cases"."Technical_Success_Manager__c" AS "Technical_Success_Manager__c", 
  "cases"."Case_Priority_Ranking__c" AS "Case_Priority_Ranking__c", 
  "cases"."PagerDuty_Email_for_Sev_2_Escalation__c" AS "PagerDuty_Email_for_Sev_2_Escalation__c", 
  "cases"."Contact_Time_Zone__c" AS "Contact_Time_Zone__c", 
  "cases"."Support_Team_Region__c" AS "Support_Team_Region__c", 
  "cases"."Reseler_Open_Opportunities__c" AS "Reseler_Open_Opportunities__c", 
  "cases"."Case_Owner_Display_Name__c" AS "Case_Owner_Display_Name__c", 
  "cases"."SA_Needed__c" AS "SA_Needed__c", 
  "cases"."Customer_Name__c" AS "Customer_Name__c", 
  "cases"."Case_Status__c" AS "Case_Status__c", 
  "cases"."Case_Sub_Status__c" AS "Case_Sub_Status__c", 
  "cases"."First_Touch_SLA_Due__c" AS "First_Touch_SLA_Due__c", 
  "cases"."SA_Currently_Assigned__c" AS "SA_Currently_Assigned__c", 
  "cases"."SA_is_Primary_Owner__c" AS "SA_is_Primary_Owner__c", 
  "cases"."Escalated_By__c" AS "Escalated_By__c", 
  "cases"."Escalated_Comments__c" AS "Escalated_Comments__c", 
  "cases"."Status_Toggle__c" AS "Status_Toggle__c", 
  "cases"."Root_Cause_Notes__c" AS "Root_Cause_Notes__c", 
  "cases"."Cause_Detail__c" AS "Cause_Detail__c", 
  "cases"."Cause__c" AS "Cause__c", 
  "dim"."Id" AS "Account_Id", 
  "dim"."Name" AS "Account_Name", 
  "dim"."Partner_Tier__c" AS "Partner_Tier" 
FROM {{source('sfdc','partner_cases')}} AS "cases" 
     LEFT OUTER JOIN 
     {{source('sfdc','SFDC_Accounts_Partners')}} AS "dim" 
     ON "cases"."AccountId"="dim"."Id"

SELECT 
    *,
    case 
        when lower("Partner_Name") like '%hakkoda%'then 'High'
        when lower("Partner_Name") like '%clymer%' then 'High' 
        when lower("Partner_Name") like '%phdata%' then 'High'
        when lower("Partner_Name") like '%kipi%' then 'High'
        when lower("Partner_Name") like '%teksystems%' then 'High'
        when lower("Partner_Name") like '%interworks%' then 'High'
        when lower("Partner_Name") like '%slalom%' then 'High'
        when lower("Partner_Name") like '%sdg%' then 'High'
        when lower("Partner_Name") like '%armeta%' then 'Contender'
        when lower("Partner_Name") like '%infostrux%' then 'Contender'
        when lower("Partner_Name") like '%one six%' then 'Contender'
        when lower("Partner_Name") like '%codex%' then 'Contender'
        when lower("Partner_Name") like '%raken%' then 'Contender'
        when lower("Partner_Name") like '%cloud data consulting%' then 'Contender'
        when lower("Partner_Name") like '%snap%' then 'Contender'
        when "Partner_Name" is null then 'No Partner'
        else 'Low' end
        AS "High Low Touch",
    CAST(
        case when "PAM_Opp_Quarter__c" = '2020-Q3' then '2020-10-31'
        when "PAM_Opp_Quarter__c" = '2020-Q4' then '2021-01-31'
        when "PAM_Opp_Quarter__c" = '2021-Q1' then '2021-04-30'
        when "PAM_Opp_Quarter__c" = '2021-Q2' then '2021-07-31'
        when "PAM_Opp_Quarter__c" = '2021-Q3' then '2021-10-31'
        when "PAM_Opp_Quarter__c" = '2021-Q4' then '2022-01-31'
        when "PAM_Opp_Quarter__c" = '2022-Q1' then '2022-04-30'
        when "PAM_Opp_Quarter__c" = '2022-Q2' then '2022-07-31'
        when "PAM_Opp_Quarter__c" = '2022-Q3' then '2022-10-31'
        when "PAM_Opp_Quarter__c" = '2022-Q4' then '2023-01-31'
        when "PAM_Opp_Quarter__c" = '2023-Q1' then '2023-04-30'
        when "PAM_Opp_Quarter__c" = '2023-Q2' then '2023-07-31'
        when "PAM_Opp_Quarter__c" = '2023-Q3' then '2023-10-31'
        when "PAM_Opp_Quarter__c" = '2023-Q4' then '2024-01-31'
        else null end AS DATE)
        AS "PAM_Opp_Quarter_End", 
    CAST(
        case when "PAM_Deal_Quarter" = '' then null
        when "PAM_Deal_Quarter" = '2020-Q3' then '2020-10-31'
        when "PAM_Deal_Quarter" = '2020-Q4' then '2021-01-31'
        when "PAM_Deal_Quarter" = '2021-Q1' then '2021-04-30'
        when "PAM_Deal_Quarter" = '2021-Q2' then '2021-07-31'
        when "PAM_Deal_Quarter" = '2021-Q3' then '2021-10-31'
        when "PAM_Deal_Quarter" = '2021-Q4' then '2022-01-31'
        when "PAM_Deal_Quarter" = '2022-Q1' then '2022-04-30'
        when "PAM_Deal_Quarter" = '2022-Q2' then '2022-07-31'
        when "PAM_Deal_Quarter" = '2022-Q3' then '2022-10-31'
        when "PAM_Deal_Quarter" = '2022-Q4' then '2023-01-31'
        when "PAM_Deal_Quarter" = '2023-Q1' then '2023-04-30'
        when "PAM_Deal_Quarter" = '2023-Q2' then '2023-07-31'
        when "PAM_Deal_Quarter" = '2023-Q3' then '2023-10-31'
        when "PAM_Deal_Quarter" = '2023-Q4' then '2024-01-31'
        else null end AS DATE)
        AS "PAM_Deal_Quarter_End" 
FROM   
    {{ref("stg_opps")}}

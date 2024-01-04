select 
    *,
    CASE
	  WHEN "Name" like 'Accenture%' THEN 'Accenture'
      WHEN "Name" like 'AllCloud%' THEN 'AllCloud'
      WHEN "Name" like 'Billigence%' THEN 'Billigence'
      WHEN "Name" like 'CapGemini%' THEN 'CapGemini'
      WHEN "Name" like 'Deloitte%' THEN 'Deloitte'
      WHEN "Name" like 'Deloitte%' THEN 'Deloitte'
      WHEN "Name" like 'Interworks%' THEN 'Interworks'
      WHEN "Name" like 'Slalom%' THEN 'Slalom'
      WHEN "Name" like 'Tata%' THEN 'Tata Consultancy Services'
      WHEN "Name" like 'Wipro%' THEN 'Wipro'
	  ELSE "Name"
    END as "AccountGroup"
from {{source('sfdc','SFDC_Accounts_Partners')}}
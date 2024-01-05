SELECT 
  "Subject", 
  CASE WHEN ("Parsed_Date" like '0%' or "Parsed_Date" like '1%') THEN TO_DATE (CONCAT("Year",'-',"Parsed_Date"),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Jan%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('01','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Feb%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('02','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Mar%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('03','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Apr%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('04','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'May%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('05','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Jun%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('06','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Jul%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('07','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Aug%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('08','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Sep%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('09','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Oct%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('10','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Nov%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('11','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    WHEN ("Parsed_Date" like 'Dec%') THEN TO_DATE(CONCAT("Year",'-',CONCAT('12','-',RIGHT("Parsed_Date",2))),'YYYY-MM-DD')
    ELSE '1900-01-01'
    END
    AS "Date", 
  "Email", 
  "Partner", 
  "Parsed_Date", 
  "Year"
FROM {{ref('stg_techworkshops')}}
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [DistrictCode]
      ,max([LastModifiedDate])

  FROM [QA].[dbo].[DataPublishingMostRecentDate]
  group by DistrictCode
  order by 2 
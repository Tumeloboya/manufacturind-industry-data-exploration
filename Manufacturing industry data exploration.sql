/* Exploring data from the world's largest public manufacturers */

  SELECT *
  FROM Business_projects..Industry_week

  -- Showing companies by rank

  SELECT Company, [Current Rank],  Revenue
  FROM Business_projects..Industry_week
  ORDER BY [Current Rank] 

  --Comparing revenue to profit margin


  SELECT Company, [Current Rank],  Revenue, [Profit Margin]
  FROM Business_projects..Industry_week
  ORDER BY [Current Rank] 

  --Assessing companies by revenue growth

   SELECT Company, [Current Rank],  Revenue, [Revenue Growth]
  FROM Business_projects..Industry_week
  WHERE [Revenue Growth] is not null 
  ORDER BY [Current Rank] 


  --Asset to liability ratio

  SELECT Company, [Total Assets], [Current Liabilities], ([Total assets]/[Current Liabilities]) AS Asset_to_liability_ratio
  FROM Business_projects..Industry_week
  WHERE [Total Assets] is not null
  ORDER BY Asset_to_liability_ratio 
 
 --Comparing companies in the petroleum & coal products industry

  SELECT Company, [Current Rank],  Revenue, [Primary Industry]
  FROM Business_projects..Industry_week
  WHERE [Primary Industry] = 'Petroleum & Coal Products' 
  ORDER BY [Current Rank] 

  --comparing companies in the motor vehicles industry

  SELECT Company, [Current Rank],  Revenue, [Primary Industry]
  FROM Business_projects..Industry_week
  WHERE [Primary Industry] = 'Motor vehicles'
  ORDER BY [Current Rank] 
  
   --comparing companies in the food & beverage industry

  SELECT Company, [Current Rank],  Revenue, [Primary Industry]
  FROM Business_projects..Industry_week
  WHERE [Primary Industry] = 'food' 
  ORDER BY [Current Rank] 


  SELECT Company, [Current Rank],  Revenue, [Primary Industry]
  FROM Business_projects..Industry_week
  WHERE [Primary Industry] = 'beverages'
  ORDER BY [Current Rank] 
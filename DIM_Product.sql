/****** Cleaned DIM Product  ******/
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCore
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [ProductName]
	  ,ps.EnglishProductSubcategoryName AS [SubCategory]
	  ,pc.EnglishProductCategoryName AS [ProductCategory]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS [ProductColor]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS [ProductSize]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS [ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS [ModelNames]
      --,[LargePhoto]
      ,p.[EnglishDescription] AS [ProductDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	  ,ISNULL (p.Status, 'Outdated') AS [ProductStatus]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps
  ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc
  ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey 
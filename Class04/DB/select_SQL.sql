SELECT PRODUCT.ProductID , PRODUCT.ProductName ,
			BRAND.brandname , Category.CategoryName ,
			UNIT.UnitName AS UNITSALE
FROM PRODUCT, BRAND , Category , UNIT 
WHERE PRODUCT.BrandKey = BRAND.brandkey 
			AND PRODUCT.CategoryKey = Category.CategoryKey 
			AND PRODUCT.UnitSaleKey = UNIT.UnitKey 
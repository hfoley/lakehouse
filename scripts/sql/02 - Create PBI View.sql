use Biometrics 
go 

SELECT MAX(BirthDate)
from COW.CowBiometrics

SELECT DISTINCT(Animal)
from COW.CowBiometrics

CREATE VIEW COW.CowPBIView 
as 
SELECT * FROM COW.CowBiometrics
--where Animal in (9110,9111)
--where BirthDate >= '2019-03-23'
--WHERE BirthDate >= DATEADD(YEAR, -4, GETDATE())
WHERE BirthDate >= DATEADD(MONTH, -2, GETDATE())


SELECT * from COW.CowPBIView




USE InsuranceCompanyDB
GO
-------------------------------------------------------------------------------------------------------------------------
/* Триггеры, обеспечивающие ссылочную целостность между таблицами CustomerProperty и PropertyCategory */
CREATE TRIGGER TriggerCustomerProperty
ON dbo.CustomerProperty
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	IF (SELECT PropertyCategoryID FROM inserted) NOT IN (SELECT PropertyCategoryID FROM dbo.PropertyCategory)
	BEGIN
		ROLLBACK;
		THROW 50002, 'Ошибка: попытка нарушения ссылочной целостности между таблицами CustomerProperty и PropertyCategory, транзакция отменена', 0
	END
END
GO

CREATE TRIGGER TriggerPropertyCategory
ON dbo.PropertyCategory
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	IF (SELECT PropertyCategoryID FROM inserted) NOT IN (SELECT PropertyCategoryID FROM dbo.CustomerProperty)
	BEGIN
		ROLLBACK;
		THROW 50002, 'Ошибка: попытка нарушения ссылочной целостности между таблицами CustomerProperty и PropertyCategory, транзакция отменена', 1
	END
END
GO
-------------------------------------------------------------------------------------------------------------------------
/* Триггер, запрещающий больше 3 сеансов, инициированных под именем входа login_test */
USE master; 
GO  
CREATE LOGIN login_test WITH PASSWORD = N'3KHJ6dhx(0xVYsdf' MUST_CHANGE,  
    CHECK_EXPIRATION = ON;  
GO 
GRANT VIEW SERVER STATE TO login_test;  
GO  

CREATE TRIGGER TriggerConnectionLimit
ON ALL SERVER WITH EXECUTE AS N'login_test'  
FOR LOGON 
AS  
BEGIN  
IF ORIGINAL_LOGIN() = N'login_test' AND  
    (SELECT COUNT(*) FROM sys.dm_exec_sessions WHERE is_user_process = 1 AND original_login_name = N'login_test') > 3  
    ROLLBACK;  
END;
GO
-------------------------------------------------------------------------------------------------------------------------
/* Триггер, выводящий статистику по сумме заказов при заходе в систему сотрудника отдела исследований (Researcher) */
USE master; 
GO  
CREATE LOGIN researcher WITH PASSWORD = N'3KHJ6dhx(0xVYsdf' MUST_CHANGE,  
    CHECK_EXPIRATION = ON;  
GO 
GRANT VIEW SERVER STATE TO researcher;  
GO

CREATE TRIGGER TriggerResearcherOnLogon  
ON ALL SERVER WITH EXECUTE AS N'researcher'  
FOR LOGON  
AS  
BEGIN  
IF ORIGINAL_LOGIN() = N'researcher'
	EXECUTE pr_ShowStatistics
END;
-------------------------------------------------------------------------------------------------------------------------
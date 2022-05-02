delete from AptEntity where idAptEntity = 1;
delete from AptEntity where address like "%ogdana%";
delete from AptEntity where rooms > 5;
delete from Branch where tel like "%333%";
delete from Branch where tel like "%567%";
delete from CostumerEntity where not (lastName = "Cristaldo");
delete from CostumerEntity where firstName like "%uan%";
delete from RentEntiy where idApt = 8;
delete from SelEntity where amount > 29999;

//query to delete duplicated registers
//obteined from https://www.mysqltutorial.org/mysql-delete-duplicate-rows/

DELETE FROM EmployeeEntity 
WHERE 
	idEmployeeEntity IN (
	SELECT 
		idEmployeeEntity 
	FROM (
		SELECT 
			idEmployeeEntity,
			ROW_NUMBER() OVER (
				PARTITION BY firstName
				ORDER BY firstName) AS row_num
		FROM 
			EmployeeEntity
	) t
    WHERE row_num > 1
);



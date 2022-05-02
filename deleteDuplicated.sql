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

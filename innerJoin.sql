SELECT * FROM RentEntiy INNER JOIN EmployeeEntity ON RentEntiy.employee = EmployeeEntity.idEmployeeEntity;
SELECT firstName, lastName FROM EmployeeEntity INNER JOIN SelEntity ON EmployeeEntity.idEmployeeEntity = SelEntity.employee;
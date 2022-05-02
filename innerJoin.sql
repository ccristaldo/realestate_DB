SELECT * FROM RentEntiy INNER JOIN EmployeeEntity ON RentEntiy.employee = EmployeeEntity.idEmployeeEntity;
SELECT firstName, lastName FROM EmployeeEntity INNER JOIN SelEntity ON EmployeeEntity.idEmployeeEntity = SelEntity.employee;
SELECT firstName, lastName FROM EmployeeEntity INNER JOIN RentEntiy ON EmployeeEntity.idEmployeeEntity = RentEntiy.employee;
SELECT  AptEntity.idAptEntity, address FROM AptEntity INNER JOIN RentEntity ON AptEntity.idAptEntity = RentEntity.idAptEntity;

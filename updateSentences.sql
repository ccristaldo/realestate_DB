update AptEntity set address = "Mendoza 1270" where address =  "mendoza 1270";
update AptEntity set cost = 200.00 where cost =  220.00;
update AptEntity set rooms = 5 where idAptEntity =  4;
update Branch set tel = "555-222-1234" where idBranch =  1;
update Branch set tel = "555-222-4321" where idBranch =  2;
update Branch set address = "Mendoza 250" where idBranch =  1;

//update amount of rent upon cost apartment
update RentEntity set amount = (select cost from AptEntity where RentEntity.idAptEntity = AptEntity.idAptEntity);

//update employees comission upon location
update RentEntiy set empComission = amount*0.2 where idApt in (
select idAptEntity from AptEntity where address like "%litsa%");

//update employees comission upon operations amount
update SelEntity set empComission = amount*0.15 where amount > 20000.00;
update SelEntity set empComission = amount*0.25 where amount <= 20000.00;
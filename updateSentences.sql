update AptEntity set address = "Mendoza 1270" where address =  "mendoza 1270";
update AptEntity set cost = 220.00 where cost =  2200.00;
update AptEntity set rooms = 5 where idAptEntity =  4;
update Branch set tel = "555-222-1234" where idBranch =  1;
update Branch set tel = "555-222-4321" where idBranch =  2;
update Branch set address = "Mendoza 250" where idBranch =  1;
update RentEntiy set empComission = amount*0.1;

update RentEntiy set empComission = amount*0.2 where idApt in (
select idAptEntity from AptEntity where address like "%litsa%");	

update SelEntity set empComission = amount*0.2 where amount > 20000.00;
update SelEntity set empComission = amount*0.1 where amount <= 20000.00;
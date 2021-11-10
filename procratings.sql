CREATE DEFINER=`root`@`localhost` PROCEDURE `procratings`()
BEGIN
select Supplier.SUPP_ID,Supplier.SUPP_NAME,Rating.RAT_RATSTARS,
case
when Rating.RAT_RATSTARS>4 THEN 'Genuine Supplier'
when Rating.RAT_RATSTARS>2 THEN 'Average Supplier'
Else 'Supplier not to be considered'
end as verdict from Rating inner join Supplier on Rating.SUPP_ID=Supplier.SUPP_ID;
END
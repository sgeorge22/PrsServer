use PRSServer;
-- User Data
INSERT into users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		VALUES ('Leon', 'password', 'Leon', 'Kennedy', '813-333-4455', 'leonk@user.com', 0,0)
go
INSERT into Vendors (Code, Name, Address, City, State, Zip, Phone, Email)
		VALUES ('BEST', 'Best Buy', '1 Best Buy Way', 'Seattle', 'WA', '34523', '678-987-6543', 'info@bestbuy.com')
go
declare @bestbuy varchar(10);
SELECT @bestbuy = Id from Vendors where Code = 'BEST';

INSErT into Products (PartNbr, Name, Price, Unit, PhotoPath, VendorId)
		VALUES ('XBOX', 'Xbox Series X', 500, 'Each', null, @bestbuy);
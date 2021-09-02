
C_LONGINT:C283(lh_employees)
Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		Form:C1466.lb_employees:=ds:C1482.Employee\
			.query("ID_company = :1"; [Company:1]ID:1)\
			.orderBy("lastName, firstName")
		
		
		Form:C1466.lb_projects:=ds:C1482.Project\
			.query("ID_companyClient = :1"; [Company:1]ID:1)\
			.orderBy("name")
		
		lh_employees:=hierarchie_of_employees
		
	: (FORM Event:C1606.code=On Unload:K2:2)
		CLEAR LIST:C377(lh_employees)
		
End case 
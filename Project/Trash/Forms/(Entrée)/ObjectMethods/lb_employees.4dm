Case of 
	: (FORM Event:C1606.code=On Double Clicked:K2:5)
		USE ENTITY SELECTION:C1513(Form:C1466.lb_employees)
		LISTBOX GET CELL POSITION:C971(*; "lb_employees"; $column; $line)
		GOTO SELECTED RECORD:C245([Employee:2]; $line)
		MODIFY RECORD:C57([Employee:2])
		
End case 
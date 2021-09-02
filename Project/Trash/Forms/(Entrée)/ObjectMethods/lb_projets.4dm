Case of 
	: (FORM Event:C1606.code=On Double Clicked:K2:5)
		USE ENTITY SELECTION:C1513(Form:C1466.lb_projects)
		LISTBOX GET CELL POSITION:C971(*; "lb_projects"; $column; $line)
		GOTO SELECTED RECORD:C245([Project:3]; $line)
		MODIFY RECORD:C57([Project:3])
		
End case 
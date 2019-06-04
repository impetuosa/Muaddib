analyzing
detectSessionFactoryOn: aMooseModel 
	self halt ."
	aMooseModel  select: [ : c | c name = 'SessionFactory' ]"
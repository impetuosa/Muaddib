accessing
datasourcesFor: aMooseModel
	^ (plugins
		select: [ :p | p isUsedIn: aMooseModel ]
		thenCollect: [ :p | p analyzeDatasources: aMooseModel ])
		flatCollect: #yourself
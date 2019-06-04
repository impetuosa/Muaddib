accessing
sessionFactoryFor: aMooseModel
	^ ((self allUsedTypesIn: aMooseModel)
		select: [ :t | t name = #SessionFactory ])
		ifEmpty: [ nil ]
		ifNotEmpty: [ :e | e first ]
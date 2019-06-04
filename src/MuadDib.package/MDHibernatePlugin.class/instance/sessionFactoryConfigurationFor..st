accessing
sessionFactoryConfigurationFor: aMooseModel
	^ ((self allUsedTypesIn: aMooseModel)
		select: [ :t | t name = #Configuration ]) first
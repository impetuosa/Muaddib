datasoruces
analyzeDatasources: aMooseModel
	^ (self sessionFactoryConfigurationFor: aMooseModel)
		incomingInvocations
		select: [ :i | i signature beginsWith: 'configure' ]
		thenCollect: [ :i | 
			self assert: i signature = 'configure()'.
			self flag: #WeShouldCatchMultipleFilesConfiguration.
			self loadDefaultHibernateFileFor: aMooseModel ]
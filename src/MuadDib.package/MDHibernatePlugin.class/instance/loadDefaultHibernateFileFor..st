locatinng
loadDefaultHibernateFileFor: aMooseModel
	^ self
		loadConfiguration: (self locateFile: 'hibernate.cfg.xml' in: aMooseModel)
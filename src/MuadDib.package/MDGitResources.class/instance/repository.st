arithmetic
repository
	
	^ repository
		ifNil: [ repository := IceRepository registry
				detect: [ :r | r name = url projectName ]
				ifNone: [ (IceRepositoryCreator new
						remote: url;
						ensureProjectFile;
						createRepository)
						register;
						yourself ].
			repository checkoutBranch: self branch.
			repository ]
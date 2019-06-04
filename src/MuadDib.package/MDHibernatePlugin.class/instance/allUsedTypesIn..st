analyzing
allUsedTypesIn: aMooseModel
	^ aMooseModel allTypes
		select: [ :s | 
			s typeContainer isNotNil
				and: [ | current |
					current := s typeContainer.
					[ current isNotNil
						and: [ (current name = #hibernate and: [ current belongsTo name = #org ])
								not ] ] whileTrue: [ current := current belongsTo ].
					current isNotNil ] ]
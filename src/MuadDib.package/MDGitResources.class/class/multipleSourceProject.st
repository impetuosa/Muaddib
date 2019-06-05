as yet unclassified
multipleSourceProject
	^ multipleSourceProject
		ifNil: [ multipleSourceProject := self new
				url: 'git@github.com:impetuosa/MultipleSourceProject.git' ]
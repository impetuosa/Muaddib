as yet unclassified
multipleSourceProject
	^ multipleSourceProject
		ifNil: [ multipleSourceProject := self new
				url: 'https://github.com/impetuosa/MultipleSourceProject.git' ]
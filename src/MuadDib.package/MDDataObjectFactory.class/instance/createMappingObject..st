creating
createMappingObject: aXMLElement
	self assert: aXMLElement attributes keys size = 1.
	aXMLElement attributes keys first = #resource
		ifTrue: [ ^ self createResourceFile: (aXMLElement attributes at: #resource) ].
	aXMLElement attributes keys first = #class
		ifTrue: [ ^ self createClassEntityReference: (aXMLElement attributes at: #class) ].
	self error: 'invalid mapping.'
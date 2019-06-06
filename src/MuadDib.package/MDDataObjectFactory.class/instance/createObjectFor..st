factory
createObjectFor: aXMLElement
	aXMLElement name = #property
		ifTrue: [ ^ self createPropertyObject: aXMLElement ].
	aXMLElement name = #mapping
		ifTrue: [ ^ self createMappingObject: aXMLElement ].
	self error: 'Invalid element'
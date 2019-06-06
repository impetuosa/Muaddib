creatingas yet unclassified
createPropertyObject: aXMLElement
	| property |
	property := MDProperty new.
	self assert: aXMLElement attributes size = 1.
	self assert: aXMLElement nodes size = 1.
	property name: (aXMLElement attributes at: #name).
	property value: aXMLElement nodes first string.
	^ property
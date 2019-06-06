configuration
loadConfiguration: aFileReference
	| document sessions datasource factory |
	document := XMLDOMParser parse: aFileReference readStream.
	factory := MDDataObjectFactory new.
	sessions := (document nodes
		select: [ :n | n name = #'hibernate-configuration' ])
		flatCollect: [ :c | 
			c nodes
				select: [ :n | n isElement and: [ n name = #'session-factory' ] ] ].
	self assert: sessions size = 1.
	datasource := MDDataSource new.
	datasource
		data:
			((sessions first nodes select: #isElement)
				collect: [ :i | factory createObjectFor: i ]).
	^ datasource
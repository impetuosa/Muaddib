accessing
testHibernatePluginDetectorDetects1
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer useHibernatePlugin.
	self assert: (analyzer datasourcesFor: model) size equals: 1
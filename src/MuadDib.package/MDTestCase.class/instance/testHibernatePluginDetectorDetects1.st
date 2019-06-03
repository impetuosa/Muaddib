accessing
testHibernatePluginDetectorDetects1
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer useHibernatePlugin.
	analyzer analyze: model.
	self assert: analyzer datasources size equals: 1
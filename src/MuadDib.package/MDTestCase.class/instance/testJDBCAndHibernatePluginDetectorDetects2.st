accessing
testJDBCAndHibernatePluginDetectorDetects2
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer
		useJDBCPlugin;
		useHibernatePlugin.
	analyzer analyze: model.
	self assert: analyzer datasources size equals: 2
accessing
testJDBCAndHibernatePluginDetectorDetects2
	| analyzer |
	analyzer  := MDAnalyzer new.
	analyzer
		useJDBCPlugin;
		useHibernatePlugin.
	self assert: (analyzer datasourcesFor: model) size equals: 2
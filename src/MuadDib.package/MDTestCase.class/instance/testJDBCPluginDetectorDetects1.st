accessing
testJDBCPluginDetectorDetects1
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer useJDBCPlugin.
	analyzer analyze: model.
	self assert: analyzer datasources size equals: 1
accessing
testJDBCPluginDetectorDetects1
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer useJDBCPlugin.
	self assert: (analyzer datasourcesFor: model) size equals: 1
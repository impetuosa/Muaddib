accessing
testEmptyPluginDetectorDetectsNothing
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer analyze: model.
	self assert: analyzer datasources size equals: 0
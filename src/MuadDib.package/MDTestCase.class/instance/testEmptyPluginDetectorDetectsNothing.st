accessing
testEmptyPluginDetectorDetectsNothing
	| analyzer |
	analyzer := MDAnalyzer new.
	self assert: (analyzer datasourcesFor: model) size equals: 0
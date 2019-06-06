creatingas yet unclassified
createResourceFile: aFilePath
	^ MDResourceFile new
		path: aFilePath asFileReference;
		yourself
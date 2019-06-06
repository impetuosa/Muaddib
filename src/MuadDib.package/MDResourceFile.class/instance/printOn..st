accessing
printOn: aStream
	aStream
		nextPutAll: 'MappingFile(';
		nextPutAll: path asString;
		nextPutAll: ')'
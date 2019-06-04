accessing
printOn: aStream
	aStream
		nextPutAll: 'EntityClass(';
		nextPutAll: classpath;
		nextPutAll: ')'
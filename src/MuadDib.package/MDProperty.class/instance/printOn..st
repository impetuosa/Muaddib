accessing
printOn: aStream
	aStream
		nextPutAll: 'Property(';
		nextPutAll: name;
		nextPutAll: '=>';
		nextPutAll: value asString;
		nextPutAll: ')'
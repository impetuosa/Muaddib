file locating
locateFile: aString in: aMooseModel
	| return |
	" The file locator should contemplate many possible facts:
	
	1- the file is not there.
	2- the src folder is not such, but configured in a pom.xml, by example.
	3-  different parts of the project have it's own version of the files, then the priority would differ according to where is the calling origin. (testing, by example) 
	"
	return := (aMooseModel rootFolder / #src) allChildren
		select: [ :f | f basename = aString ].
	self assert: return size = 1.
	^ return first
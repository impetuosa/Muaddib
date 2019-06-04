accessing
setUp
	super setUp.
	model := self project: #MultipleSourceProject from: 'git@github.com:impetuosa/MultipleSourceProject.git'.
	
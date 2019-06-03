accessing
setUp
	super setUp.
	model := self project: #MultipleSourcesProject from: 'git@github.com:impetuosa/MultipleSourceProject.git'.
	
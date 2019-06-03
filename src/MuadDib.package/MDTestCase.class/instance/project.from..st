accessing
project: projectName from: gitUrl
	| repo project |
	repo := IceRepository registry
		detect: [ :r | r name = projectName ]
		ifNone: [ (IceRepositoryCreator new
				remote: (IceGitRemote url: gitUrl);
				ensureProjectFile;
				createRepository) register ].
	project := MooseModel
		importFromMSEStream: (repo workingCopy fileSystem / (projectName , '.mse')) readStream.
	project rootFolder: repo workingCopy fileSystem.
	^ project
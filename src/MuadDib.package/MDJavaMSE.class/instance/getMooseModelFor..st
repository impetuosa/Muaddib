as yet unclassified
getMooseModelFor: aResource
	| mse project |
	mse := self getMseFor: MDGitResources multipleSourceProject.
	project := MooseModel importFromMSEStream: mse readStream.
	project rootFolder: aResource asFileReference.
	^ project 
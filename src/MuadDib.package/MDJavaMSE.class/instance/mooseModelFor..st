as yet unclassified
mooseModelFor: aResource
	| mse project |
	mse := self mseFor: MDGitResources multipleSourceProject.
	project := MooseModel importFromMSEStream: mse readStream.
	project rootFolder: aResource asFileReference.
	^ project 
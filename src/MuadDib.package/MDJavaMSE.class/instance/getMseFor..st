as yet unclassified
getMseFor: aResource
	(aResource asFileReference / aResource branch , 'mse') exists
		ifFalse: [ | future |
			future := (MDGitResources verveinej / 'verveinej.sh') command
				option: '-o' value: (MDGitResources multipleSourceProject asFileReference / MDGitResources multipleSourceProject branch , 'mse') fullName;
				option: '-alllocals';
				option: '-anchor' value: 'assoc';
				option: '-autocp' value: (MDGitResources multipleSourceProject asFileReference / #target / #dependency) fullName;
				argument: MDGitResources multipleSourceProject asFileReference fullName;
				future.
			future synchronizeTimeout: 2 hours.
			(aResource asFileReference / aResource branch , 'mse') exists
				ifFalse: [ self error: 'Error Generating the MSE file' ] ].
	^ aResource asFileReference / aResource branch , 'mse'
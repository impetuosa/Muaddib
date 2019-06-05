as yet unclassified
getMseFor: aResource
	(aResource asFileReference / aResource branch , 'mse') exists
		ifFalse: [ | future |
			future := MDGitResources verveinej / 'verveinej.sh'
				futureWithArguments:
					{'-o'.
					(MDGitResources multipleSourceProject asFileReference
						/ MDGitResources multipleSourceProject branch , 'mse') fullName.
					'-alllocals'.
					'-anchor'.
					'assoc'.
					'-autocp'.
					(MDGitResources multipleSourceProject asFileReference / #target
						/ #dependency) fullName.
					MDGitResources multipleSourceProject asFileReference fullName}.
			future synchronizeTimeout: 2 hours.
			(aResource asFileReference / aResource branch , 'mse') exists
				ifFalse: [ self error: 'Error Generating the MSE file' ] ].
	^ aResource asFileReference / aResource branch , 'mse'
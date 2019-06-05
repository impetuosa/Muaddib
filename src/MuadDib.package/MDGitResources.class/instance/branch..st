arithmetic
branch: aBranchName
	branch := aBranchName.
	repository ifNotNil: [ repository checkoutBranch: self branch ]
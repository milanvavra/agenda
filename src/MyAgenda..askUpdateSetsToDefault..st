!MyAgenda methodsFor: 'view' stamp: 'mv 3/10/2015 04:34'!
askUpdateSetsToDefault
	self askOrCategoriesToDefault.
	self askAndCategoriesToDefault.
	self askNotCategoriesToDefault.

	self askAndCategoriesSelected: true.
	self changed: #askAndCategoriesSelected.
! !

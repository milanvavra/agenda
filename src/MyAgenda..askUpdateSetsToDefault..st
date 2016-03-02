!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 04:34'!
askUpdateSetsToDefault
	self askOrCategoriesToDefault.
	self askAndCategoriesToDefault.
	self askNotCategoriesToDefault.

	self askAndCategoriesSelected: true.
	self changed: #askAndCategoriesSelected.
! !

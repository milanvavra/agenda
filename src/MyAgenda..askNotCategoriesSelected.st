!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 01:24'!
askNotCategoriesSelected: aFalse
	self askCategoriesSelected: 3.
	self changed: #askAndCategoriesSelected.
	self changed: #askOrCategoriesSelected.
! !

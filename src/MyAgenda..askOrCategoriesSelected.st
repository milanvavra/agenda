!MyAgenda methodsFor: 'view' stamp: 'mva 3/10/2015 01:44'!
askOrCategoriesSelected: aFalse
	self askCategoriesSelected: 1.
	self changed: #askAndCategoriesSelected.
	self changed: #askNotCategoriesSelected
! !

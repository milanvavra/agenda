!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 01:25'!
askAndCategoriesSelected: aTrue
	self askCategoriesSelected: 2.
	self changed: #askOrCategoriesSelected.
	self changed: #askNotCategoriesSelected.

	! !

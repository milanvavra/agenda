!MyAgenda methodsFor: 'controller' stamp: 'MilanVavra 3/10/2015 04:22'!
askOrCategoriesListSelectedIndex: tmpIndex
	self askAndCategoriesSelected ifTrue:
		[  self askAndCategories add: (self askOrCategoriesList at: tmpIndex) ].

	self askNotCategoriesSelected ifTrue:
		[  self askNotCategories add: (self askOrCategoriesList at: tmpIndex) ].

	self askOrCategories remove: (self askOrCategoriesList at: tmpIndex).

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow
! !

!MyAgenda methodsFor: 'controller' stamp: 'mv 3/10/2015 04:22'!
askNotCategoriesListSelectedIndex: tmpIndex
	self askAndCategoriesSelected ifTrue:
		[  self askAndCategories add: (self askNotCategoriesList at: tmpIndex) ].

	self askOrCategoriesSelected ifTrue:
		[  self askOrCategories add: (self askNotCategoriesList at: tmpIndex) ].

	self askNotCategories remove: (self askNotCategoriesList at: tmpIndex).

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow
! !

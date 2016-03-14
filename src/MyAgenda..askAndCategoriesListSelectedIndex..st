!MyAgenda methodsFor: 'controller' stamp: 'mva 3/10/2015 04:26'!
askAndCategoriesListSelectedIndex: tmpIndex

	self askOrCategoriesSelected ifTrue:
		[  self askOrCategories add: (self askAndCategoriesList at: tmpIndex) ].

	self askNotCategoriesSelected ifTrue:
		[  self askNotCategories add: (self askAndCategoriesList at: tmpIndex) ].

	self askAndCategories remove: (self askAndCategoriesList at: tmpIndex).

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow
! !

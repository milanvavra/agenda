!MyAgenda methodsFor: 'controller' stamp: 'mv 3/10/2015 04:22'!
askCategories1ListSelectedIndex: tmpIndex

	self askOrCategoriesSelected ifTrue:
		[  self askOrCategories add: (self askCategories1List at: tmpIndex) ].

	self askAndCategoriesSelected ifTrue:
		[  self askAndCategories add: (self askCategories1List at: tmpIndex) ].

	self askNotCategoriesSelected ifTrue:
		[  self askNotCategories add: (self askCategories1List at: tmpIndex) ].

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow
! !

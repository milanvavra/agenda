!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 04:35'!
askUpdateSets
	self askItems2:
		( self askComputeItemsFromCategoryItems: self askCategoryItems
			OrCategories: self askOrCategories
			AndCategories: self askAndCategories
			NotCategories: self askNotCategories ).

 	self askItems2 size = 0
		ifTrue: [ varItems2ListSelectedIndex := 0 ].

	self askCategoryItems1:
	 	( self askItems2 size = 0
			ifTrue: [ self askCategoryItems ]
			ifFalse:	[ self askComputeCategoryItemsFromItemCategories:	self askItemCategories
						AndItems: self askItems2 ] ).

	self askCategories1:
		 (((self askCategoryItems1 keys
			difference: self askAndCategories)
				difference: self askOrCategories)
					difference: self askNotCategories).

	self askCategories4:
		( self askItems2ListHasSelectedIndex
			ifTrue: [ self askItemCategories at: (self askItems2List at: self askItems2ListSelectedIndex ) ]
			ifFalse: [ Set new ] ).

	self askCategories5:
		( self askItems2ListHasSelectedIndex
			ifTrue: [ (self askCategoryItems keys) difference: (self askCategories4) ]
			ifFalse: [ Set new ] ).

	self changed: #askCategories1ListLabels.
	self changed: #askOrCategoriesListLabels.
	self changed: #askAndCategoriesListLabels.
	self changed: #askNotCategoriesListLabels.
	self changed: #askItems2ListLabels.
	self changed: #askCategories4ListLabels.
	self changed: #askCategories5ListLabels.
! !

!MyAgenda methodsFor: 'view' stamp: 'mv 5/8/2015 01:56'!
askAndCategoriesList
	^self askAndCategories
		sorted: [:tmpCategory1 :tmpCategory2|
			tmpCategory1 askCategoryText <= tmpCategory2 askCategoryText]
! !

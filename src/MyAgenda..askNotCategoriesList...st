!MyAgenda methodsFor: 'view' stamp: 'mva 5/8/2015 01:58'!
askNotCategoriesList
	^self askNotCategories
		sorted: [:tmpCategory1 :tmpCategory2|
			tmpCategory1 askCategoryText <= tmpCategory2 askCategoryText]
! !

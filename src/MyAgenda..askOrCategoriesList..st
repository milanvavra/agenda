!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 5/8/2015 01:59'!
askOrCategoriesList
	^self askOrCategories
		sorted: [:tmpCategory1 :tmpCategory2|
			tmpCategory1 askCategoryText <= tmpCategory2 askCategoryText]
! !

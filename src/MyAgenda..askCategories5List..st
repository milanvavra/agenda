!MyAgenda methodsFor: 'view' stamp: 'mv 5/8/2015 01:57'!
askCategories5List
	^self askCategories5
		sorted: [:tmpCategory1 :tmpCategory2|
			tmpCategory1 askCategoryText <= tmpCategory2 askCategoryText]
! !

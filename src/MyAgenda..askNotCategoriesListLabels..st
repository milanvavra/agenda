!MyAgenda methodsFor: 'view' stamp: 'mv 3/10/2015 02:58'!
askNotCategoriesListLabels
	^self askNotCategoriesList collect: [ :tmpCategory |
		tmpCategory askCategoryText].
! !

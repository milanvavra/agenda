!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 02:58'!
askNotCategoriesListLabels
	^self askNotCategoriesList collect: [ :tmpCategory |
		tmpCategory askCategoryText].
! !

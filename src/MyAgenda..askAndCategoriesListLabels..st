!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 04:25'!
askAndCategoriesListLabels
	^self askAndCategoriesList collect: [ :tmpCategory |
		tmpCategory askCategoryText, '(', (self askCategoryItems1 at: tmpCategory) size asString, ')'].
! !

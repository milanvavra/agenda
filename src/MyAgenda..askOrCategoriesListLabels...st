!MyAgenda methodsFor: 'view' stamp: 'mva 3/9/2015 03:25'!
askOrCategoriesListLabels
	^self askOrCategoriesList collect: [ :tmpCategory |
		tmpCategory askCategoryText, '(', (self askCategoryItems1 at: tmpCategory) size asString, ')'].
! !

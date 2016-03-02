!MyAgenda methodsFor: 'view' stamp: 'mv 2/26/2015 16:22'!
askCategories5ListLabels
	^self askCategories5List collect: [ :tmpCategory |
		tmpCategory askCategoryText, '(', (self askCategoryItems at: tmpCategory) size asString, ')'].
! !

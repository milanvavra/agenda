!MyAgenda methodsFor: 'view' stamp: 'mva 2/26/2015 16:22'!
askCategories4ListLabels
	^self askCategories4List collect: [ :tmpCategory |
		tmpCategory askCategoryText, '(', (self askCategoryItems at: tmpCategory) size asString, ')'].
! !

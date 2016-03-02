!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 2/26/2015 16:24'!
askCategories1ListLabels
	^self askCategories1List collect: [ :tmpCategory |
		tmpCategory askCategoryText, '(', (self askCategoryItems1 at: tmpCategory) size asString, ')']
! !

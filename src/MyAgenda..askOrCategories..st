!MyAgenda methodsFor: 'view' stamp: 'mva 3/9/2015 03:20'!
askOrCategories
	^ varOrCategories ifNil: [ self askOrCategories: Set new ]
! !

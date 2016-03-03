!MyAgenda methodsFor: 'view' stamp: 'mva 3/10/2015 01:46'!
askNotCategories
	^ varNotCategories ifNil: [ self askNotCategories: Set new ]
! !

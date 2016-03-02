!MyAgenda methodsFor: 'view' stamp: 'mv 3/10/2015 01:46'!
askNotCategories
	^ varNotCategories ifNil: [ self askNotCategories: Set new ]
! !

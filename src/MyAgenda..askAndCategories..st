!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 3/10/2015 04:22'!
askAndCategories
	^ varCategories2 ifNil: [ self askAndCategories: Set new ]
! !

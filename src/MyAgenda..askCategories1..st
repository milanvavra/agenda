!MyAgenda methodsFor: 'view' stamp: 'MilanVavra 2/18/2015 16:20'!
askCategories1
	^ varCategories1 ifNil: [ self askCategories1: Set new ]
! !

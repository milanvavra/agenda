!MyAgenda methodsFor: 'model access' stamp: 'MilanVavra 2/26/2015 16:30'!
askItemCategories
	^ varItemCategories ifNil: [ self askItemCategories: Dictionary new ]
! !

!MyAgenda methodsFor: 'model access' stamp: 'mva 2/26/2015 16:30'!
askItemCategories
	^ varItemCategories ifNil: [ self askItemCategories: Dictionary new ]
! !

!MyAgenda methodsFor: 'model access' stamp: 'mva 2/26/2015 16:35'!
askCategoryItems
	^ varCategoryItems ifNil: [ self askCategoryItems: Dictionary new ]
! !

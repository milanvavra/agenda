!MyAgenda methodsFor: 'view' stamp: 'mva 2/26/2015 16:38'!
askCategoryItems1
	^ varCategoryItems1 ifNil: [ self askCategoryItems1: Dictionary new ]
! !

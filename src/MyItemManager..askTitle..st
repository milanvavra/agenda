!MyItemManager methodsFor: 'accessing' stamp: 'mv 6/4/2015 20:03'!
askTitle
	^ varTitle ifNil: [ self askTitle: 'Item Manager Version 1.0' ]
! !

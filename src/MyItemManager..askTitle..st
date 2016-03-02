!MyItemManager methodsFor: 'accessing' stamp: 'MilanVavra 6/4/2015 20:03'!
askTitle
	^ varTitle ifNil: [ self askTitle: 'Item Manager Version 1.0' ]
! !

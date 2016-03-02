!MyAgenda methodsFor: 'view' stamp: 'mv 2/19/2015 17:10'!
askItems2ListHasSelectedIndex
	^ (self askItems2ListSelectedIndex > 0) and: [ self askItems2ListSelectedIndex <= self askItems2List size ]

! !

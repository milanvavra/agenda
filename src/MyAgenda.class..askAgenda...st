!MyAgenda class methodsFor: 'accessing' stamp: 'mva 2/17/2015 03:11'!
askAgenda
	^ varAgenda ifNil: [ self askAgenda: MyAgenda new ]
! !

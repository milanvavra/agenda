!MyItemManager methodsFor: 'open/close' stamp: 'mva 9/7/2015 20:51'!
askOpen
	| tmpAgenda |
	tmpAgenda := MyAgenda askAgenda.
	^self askOpenWith: tmpAgenda

! !

!MyAgenda methodsFor: 'category instances' stamp: 'MilanVavra 9/7/2015 16:48'!
askInstancesDictionary
	^ varInstancesDictionary ifNil: [ self askInstancesDictionary: Dictionary new ]
! !

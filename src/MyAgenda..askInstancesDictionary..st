!MyAgenda methodsFor: 'category instances' stamp: 'mva 9/7/2015 16:48'!
askInstancesDictionary
	^ varInstancesDictionary ifNil: [ self askInstancesDictionary: Dictionary new ]
! !

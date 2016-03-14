!MyAgenda methodsFor: 'category instances' stamp: 'mva 9/7/2015 16:47'!
askCategoryWithText: tmpCategoryText
	^ self askInstancesDictionary
		at: tmpCategoryText ifAbsentPut: [MyCategory new askCategoryText: tmpCategoryText; yourself ]
! !

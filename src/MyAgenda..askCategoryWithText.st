!MyAgenda methodsFor: 'category instances' stamp: 'MilanVavra 9/7/2015 16:47'!
askCategoryWithText: tmpCategoryText
	^ self askInstancesDictionary
		at: tmpCategoryText ifAbsentPut: [MyCategory new askCategoryText: tmpCategoryText; yourself ]
! !

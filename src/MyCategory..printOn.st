!MyCategory methodsFor: 'printing' stamp: 'mv 2/17/2015 02:03'!
printOn: aStream
	aStream
		nextPutAll: self className;
		nextPutAll: '(';
		nextPutAll: self askCategoryText;
		nextPutAll: ')'
! !

!MyItem methodsFor: 'printing' stamp: 'MilanVavra 3/4/2015 16:11'!
printOn: aStream
	aStream
		nextPutAll: self className;
		nextPutAll: '(';
		nextPutAll: self askItemText;
		nextPutAll: ', ';
		nextPutAll: self askItemUrl;
		nextPutAll: ')'
! !

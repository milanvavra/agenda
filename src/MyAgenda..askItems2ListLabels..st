!MyAgenda methodsFor: 'view' stamp: 'mv 2/26/2015 16:19'!
askItems2ListLabels
	^ self askItems2List collect: [ :tmpItem | tmpItem askItemText, '(', (self askItemCategories at: tmpItem) size asString, ')'].

! !

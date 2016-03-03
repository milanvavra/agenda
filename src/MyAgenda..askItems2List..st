!MyAgenda methodsFor: 'view' stamp: 'mva 5/8/2015 01:58'!
askItems2List
	^ self askItems2
		sorted: [:tmpItem1 :tmpItem2|
			tmpItem1 askItemText <= tmpItem2 askItemText]

! !

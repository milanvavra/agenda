!MyAgenda methodsFor: 'as yet unclassified' stamp: 'MilanVavra 9/11/2015 02:38'!
askOpenItems
	self askItems2List do: [ :tmpItem | self askOpenItem: tmpItem ]! !

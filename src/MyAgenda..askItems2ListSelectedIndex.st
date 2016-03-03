!MyAgenda methodsFor: 'controller' stamp: 'mva 2/26/2015 23:00'!
askItems2ListSelectedIndex: tmpIndex

	varItems2ListSelectedIndex := tmpIndex.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow.

	^varItems2ListSelectedIndex
	! !

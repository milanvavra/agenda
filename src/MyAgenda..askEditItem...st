!MyAgenda methodsFor: 'controller' stamp: 'mva 2/22/2015 18:59'!
askEditItem
	| tmpItem |

	tmpItem := self askItems2List at: self askItems2ListSelectedIndex.

	MyItemEditor new
		askItem: tmpItem;
		openModal.

	self askUpdateWindow.

! !

!MyAgenda methodsFor: 'controller' stamp: 'mva 2/26/2015 18:53'!
askCategories5ListSelectedIndex: tmpIndex
	| tmpCategory tmpItem |
	tmpCategory := self askCategories5List at: tmpIndex.
	tmpItem := self askItems2List at: self askItems2ListSelectedIndex.

	(self askItemCategories at: tmpItem) add: tmpCategory.
	(self askCategoryItems at:tmpCategory) add: tmpItem.

	self askUpdateWindow.
! !

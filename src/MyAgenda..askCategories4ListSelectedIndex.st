!MyAgenda methodsFor: 'controller' stamp: 'MilanVavra 2/27/2015 00:26'!
askCategories4ListSelectedIndex: tmpIndex
	| tmpCategory tmpItem |
	tmpCategory := self askCategories4List at: tmpIndex.

	tmpCategory askCategoryText = 'All' ifFalse:
		[ tmpItem := self askItems2List at: self askItems2ListSelectedIndex.

		"varItems2ListSelectedIndex := 0.
		"

		(self askItemCategories at: tmpItem) remove: tmpCategory.
		(self askCategoryItems at:tmpCategory) remove: tmpItem.

		self askUpdateWindow].
! !

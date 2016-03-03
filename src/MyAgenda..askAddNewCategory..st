!MyAgenda methodsFor: 'controller' stamp: 'mva 9/7/2015 16:56'!
askAddNewCategory
"	modifies
	self askItemCategories
	self askCategoryItems
"
	| tmpCategory tmpItem tmpItemEditor |

	tmpCategory := MyCategory new.

	tmpItemEditor := MyCategoryEditor new
		askCategory: tmpCategory;
		yourself.

	tmpItemEditor openModal cancelled ifFalse:
		[ tmpItem := self askItems2List at: self askItems2ListSelectedIndex.

		tmpCategory := self askCategoryWithText: tmpCategory askCategoryText.

		(self askItemCategories at: tmpItem) add: tmpCategory.
		self askCategoryItems at:tmpCategory put: (Set with: tmpItem).

		self askUpdateWindow ]
! !

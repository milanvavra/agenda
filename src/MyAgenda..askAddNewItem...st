!MyAgenda methodsFor: 'controller' stamp: 'mva 3/10/2015 04:22'!
askAddNewItem
"	modifies
	self askItemCategories
	self askCategoryItems
"
	| tmpItem tmpItemEditor |

	tmpItem := MyItem new.

	tmpItemEditor := MyItemEditor new
		askItem: tmpItem;
		yourself.

	tmpItemEditor openModal cancelled ifFalse:
		[ self askItems2ListHasSelectedIndex
			ifTrue:
				[ self askAddItem: tmpItem toCategories: (self askItemCategories at: (self askItems2List at: self askItems2ListSelectedIndex) ) ]
			ifFalse: [ self askAddItem: tmpItem toCategories: self askAndCategories ].

		self askAddAllToItem: tmpItem.

		self askUpdateWindow ]
! !

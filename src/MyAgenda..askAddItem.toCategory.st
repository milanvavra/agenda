!MyAgenda methodsFor: 'model' stamp: 'mv 3/5/2015 00:12'!
askAddItem: tmpItem toCategory: tmpCategory
"	modifies
	self askItemCategories
	self askCategoryItems
"
	(self askItemCategories at: tmpItem ifAbsentPut: [Set new]) add: tmpCategory.

	(self askCategoryItems at: tmpCategory ifAbsentPut: [Set new]) add: tmpItem.


! !

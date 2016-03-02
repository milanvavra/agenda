!MyAgenda methodsFor: 'model' stamp: 'mv 3/10/2015 04:46'!
askComputeCategoryItemsFromItemCategories: tmpItemCategories AndItems: tmpItems
	| tmpCategoryItems |

	tmpCategoryItems := Dictionary new.

	tmpItems do: [ :tmpItem |
		(tmpItemCategories at: tmpItem) do: [ :tmpCategory |
			(tmpCategoryItems at: tmpCategory ifAbsentPut: [Set new])
				add: tmpItem ] ].

	^ tmpCategoryItems.
! !

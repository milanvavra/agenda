!MyAgenda class methodsFor: 'compute' stamp: 'mva 5/7/2015 04:02'!
askComputeCategoryItemsFromItemCategories: tmpItemCategories
	| tmpCategoryItems |

	tmpCategoryItems := Dictionary new.

	tmpItemCategories associationsDo: [ :tmpAssociation |
		tmpAssociation value do: [ :tmpCategory |
			(tmpCategoryItems
				at: tmpCategory
				ifAbsentPut: [Set new]
			) add: tmpAssociation key ] ].

	^ tmpCategoryItems! !

!MyAgenda class methodsFor: 'compute' stamp: 'mva 5/7/2015 04:03'!
askComputeCategoryItemsFromItemCategories: tmpItemCategories AndCategories: tmpCategories
	| tmpCategoryItems |

	tmpCategoryItems :=  Dictionary new.

	tmpCategories do: [ :tmpCategory | tmpCategoryItems at: tmpCategory put: Set new ].

	tmpItemCategories associationsDo: [ :tmpAssociation | tmpAssociation value do: [ :tmpCategory |
		(tmpCategoryItems at: tmpCategory) add: tmpAssociation key ] ].

	^ tmpCategoryItems
! !

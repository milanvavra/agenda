!MyAgenda methodsFor: 'model' stamp: 'mv 3/7/2015 23:34'!
askComputeItemsFromCategoryItems: tmpCategoryItems OrCategories: tmpOrCategories AndCategories: tmpAndCategories NotCategories: tmpNotCategories
	| tmpItems |

	tmpItems := nil.

"	(tmpCategories isNil or: [ tmpCategories isEmpty]) ifTrue:
		[ tmpItems := tmpCategoryItems at: (MyCategory askCategoryWithText: 'All') ].
"

	tmpOrCategories do: [ :tmpCategory |
		tmpItems
			ifNil: [ tmpItems := tmpCategoryItems at: tmpCategory ]
			ifNotNil: [ tmpItems := tmpItems union: (tmpCategoryItems at: tmpCategory) ] ].

	tmpAndCategories do: [ :tmpCategory |
		tmpItems
			ifNil: [ tmpItems := tmpCategoryItems at: tmpCategory ]
			ifNotNil: [ tmpItems := tmpItems intersection: (tmpCategoryItems at: tmpCategory) ] ].

	tmpNotCategories do: [ :tmpCategory |
		tmpItems
			ifNotNil: [ tmpItems := tmpItems difference: (tmpCategoryItems at: tmpCategory) ] ].


	^tmpItems ifNil: [ Set new ]
! !

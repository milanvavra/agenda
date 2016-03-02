!MyAgenda class methodsFor: 'compute' stamp: 'mv 5/7/2015 04:06'!
askComputeItemsFromCategoryItems: tmpCategoryItems AndCategories: tmpCategories NotCategories: tmpNCategories
	| tmpItems |

	tmpItems := nil.

"	(tmpCategories isNil or: [ tmpCategories isEmpty]) ifTrue:
		[ tmpItems := tmpCategoryItems at: (MyCategory askCategoryWithText: 'All') ].
"
	tmpCategories do: [ :tmpCategory |
		tmpItems
			ifNil: [ tmpItems := tmpCategoryItems at: tmpCategory ]
			ifNotNil: [ tmpItems := tmpItems intersection: (tmpCategoryItems at: tmpCategory) ] ].

	^tmpItems ifNil: [ Set new ]
! !

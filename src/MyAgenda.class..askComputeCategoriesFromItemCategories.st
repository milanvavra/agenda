!MyAgenda class methodsFor: 'compute' stamp: 'mv 5/7/2015 04:02'!
askComputeCategoriesFromItemCategories: tmpItemCategories
	| tmpCategories1 |

	tmpCategories1 := Set new.
	tmpItemCategories do: [ :tmpCategories2 | tmpCategories1 := tmpCategories1 union: tmpCategories2].

"	tmpItemCategories do: [ :tmpCategories2 | tmpCategories2 do: [ :tmpCategory | tmpCategories1 add: tmpCategory ]].
	tmpItemCategories do: [ :tmpCategories2 | tmpCategories1 addAll: tmpCategories2 ].
"
	^ tmpCategories1
! !

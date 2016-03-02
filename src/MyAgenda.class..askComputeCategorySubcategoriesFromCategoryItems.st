!MyAgenda class methodsFor: 'compute' stamp: 'MilanVavra 5/7/2015 03:21'!
askComputeCategorySubcategoriesFromCategoryItems: tmpCategoryItems
	| tmpCategorySubcategories tmpSubcategories |

	tmpCategorySubcategories := Dictionary new.

	tmpCategoryItems associationsDo: [ :tmpAssociationB |
		tmpSubcategories := Set new.
		tmpCategoryItems associationsDo: [ :tmpAssociationA |
			tmpAssociationB key ~= tmpAssociationA key ifTrue: [
				((tmpAssociationB value & tmpAssociationA value) = tmpAssociationA value
				and: [ tmpAssociationB value ~= tmpAssociationA value ]) ifTrue: [
					tmpSubcategories add: tmpAssociationA key
				]
			]
		].
		tmpSubcategories ifNotEmpty: [
			tmpCategorySubcategories at: tmpAssociationB key put: tmpSubcategories
		]
	].


	^ tmpCategorySubcategories.
! !

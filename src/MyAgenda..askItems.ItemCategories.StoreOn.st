!MyAgenda methodsFor: 'model' stamp: 'mva 5/8/2015 02:11'!
askItems: tmpItems ItemCategories: tmpItemCategories StoreOn: aStream
	|  tmpAssociations tmpIndex |

	aStream truncate.

	tmpAssociations := Array new: tmpItems size.

	tmpIndex := 0.

	tmpItems do: [ :tmpItem |
		tmpAssociations
			at: (tmpIndex := tmpIndex + 1)
			put: ( Association key: tmpItem value:
				((tmpItemCategories at: tmpItem)
					sorted: [:tmpCategory1 :tmpCategory2|
						tmpCategory1 askCategoryText <= tmpCategory2 askCategoryText]) ).
	].

	tmpAssociations := tmpAssociations
		sorted: [ :tmpAssociation1 :tmpAssociation2 |
			tmpAssociation1 key askItemText <= tmpAssociation2 key askItemText ].

	tmpAssociations do: [ :tmpAssociation | | tmpItem tmpCategories |
		tmpItem := tmpAssociation key.
		tmpCategories := tmpAssociation value.

		aStream nextPut: $I.
		aStream nextPut: Character space.
		aStream nextPutAll: tmpItem askItemText.
		aStream nextPut: Character lf.

		aStream nextPut: $U.
		aStream nextPut: Character space.
		aStream nextPutAll: tmpItem askItemUrl.
		aStream nextPut: Character lf.

		tmpCategories do: [ :tmpCategory |
			aStream nextPut: $C.
			aStream nextPut: Character space.
			aStream nextPutAll: tmpCategory askCategoryText.
			aStream nextPut: Character lf.
		].
		aStream nextPut: Character lf.
	].


! !

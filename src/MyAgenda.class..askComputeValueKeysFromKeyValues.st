!MyAgenda class methodsFor: 'compute' stamp: 'MilanVavra 5/7/2015 03:16'!
askComputeValueKeysFromKeyValues: tmpKeyValues
	| tmpValueKeys |

	tmpValueKeys := Dictionary new.

	tmpKeyValues associationsDo: [ :tmpAssociation |
		tmpAssociation value do: [ :tmpValue |
			(tmpValueKeys at: tmpValue ifAbsentPut: [Set new]) add: tmpAssociation key ] ].

	^ tmpValueKeys
! !

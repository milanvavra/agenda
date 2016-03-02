!MyAgenda methodsFor: 'model' stamp: 'MilanVavra 3/19/2015 22:54'!
askFileName
	^ varFileName ifNil:
		[ varFileName := MyFileName new.
			varFileName askFileNameText: 'items.txt'.
			varFileName ]
! !

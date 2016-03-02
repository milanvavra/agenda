!MyAgenda methodsFor: 'model' stamp: 'mv 3/19/2015 22:54'!
askFileName
	^ varFileName ifNil:
		[ varFileName := MyFileName new.
			varFileName askFileNameText: 'items.txt'.
			varFileName ]
! !

!MyAgenda methodsFor: 'controller' stamp: 'MilanVavra 3/20/2015 04:22'!
askEditFileName
	| tmpFileNameEditor |

	tmpFileNameEditor := MyFileNameEditor new
		askFileName: self askFileName ;
		yourself.

	tmpFileNameEditor openModal cancelled ifFalse:
		[ self askFileName changed: #askFileNameText ]
! !

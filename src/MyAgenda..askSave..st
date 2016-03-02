!MyAgenda methodsFor: 'controller' stamp: 'mv 5/7/2015 06:05'!
askSave
	| tmpFileName |

	tmpFileName := self askFileName askFileNameText.

	tmpFileName asFileReference
		writeStreamDo: [ :tmpStream |
			self
				askItems: self askItemCategories keys
				ItemCategories: self askItemCategories
				StoreOn: tmpStream
		]
! !

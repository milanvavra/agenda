!MyAgenda methodsFor: 'controller' stamp: 'mv 5/7/2015 07:34'!
askSaveSelected
	| tmpFileName |

	tmpFileName := self askFileName askFileNameText.

	tmpFileName asFileReference
		writeStreamDo: [ :tmpStream |
			self
				askItems: (self askItems2 ifEmpty: [ self askItemCategories keys ])
				ItemCategories: self askItemCategories
				StoreOn: tmpStream.
		]
! !

!MyFileNameEditor methodsFor: 'as yet unclassified' stamp: 'MilanVavra 3/19/2015 23:04'!
openModal
	|tmpBuilder tmpContent tmpDialog|

	tmpBuilder := UITheme builder.
	tmpContent := tmpBuilder newLabelGroup: {
		'FileName' -> ((tmpBuilder newTextEntryFor: self askFileName
			getText: #askFileNameText
			setText: #askFileNameText:
			help: 'FileName Text') minWidth: 200).
	}.
	tmpDialog := tmpBuilder newPluggableDialogWindow: 'Edit FileName'
		for: tmpContent.
	^tmpBuilder openModal: tmpDialog
! !

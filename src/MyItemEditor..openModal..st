!MyItemEditor methodsFor: 'as yet unclassified' stamp: 'mv 3/19/2015 22:29'!
openModal
	|tmpBuilder tmpContent tmpDialog|

	tmpBuilder := UITheme builder.
	tmpContent := tmpBuilder newLabelGroup: {
		'Item' -> ((tmpBuilder newTextEntryFor: self askItem
			getText: #askItemText
			setText: #askItemText:
			help: 'Item Text') minWidth: 800).
		'Url' -> ((tmpBuilder newTextEntryFor: self askItem
			getText: #askItemUrl
			setText: #askItemUrl:
			help: 'Item Url') minWidth: 800).
	}.
	tmpDialog := tmpBuilder newPluggableDialogWindow: self askTitle
		for: tmpContent.
	^tmpBuilder openModal: tmpDialog.
	! !

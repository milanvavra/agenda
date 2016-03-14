!MyCategoryEditor methodsFor: 'as yet unclassified' stamp: 'mva 3/19/2015 22:24'!
openModal
	|tmpBuilder tmpContent tmpDialog|

	tmpBuilder := UITheme builder.
	tmpContent := tmpBuilder newLabelGroup: {
		'Category' -> ((tmpBuilder newTextEntryFor: self askCategory
			getText: #askCategoryText
			setText: #askCategoryText:
			help: 'Category Text') minWidth: 200).
	}.
	tmpDialog := tmpBuilder newPluggableDialogWindow: self askTitle
		for: tmpContent.
	^tmpBuilder openModal: tmpDialog
! !

!MyItemManager methodsFor: 'open/close' stamp: 'mv 9/11/2015 02:32'!
askOpenWith: tmpAgenda
	| tmpBuilder |
	varAgenda := tmpAgenda.

	tmpBuilder := UITheme builder.

	varMorph := tmpBuilder newRow: {
		tmpBuilder newColumn: {
			tmpBuilder newLabel: 'Groups Selected'.
			tmpBuilder newRow: {
				tmpBuilder newRadioButtonFor:	tmpAgenda
					getSelected:			#askAndCategoriesSelected
					setSelected:			#askAndCategoriesSelected:
					getEnabled:			nil
					label:					'All of these'
					help:					'Select "All of these" to add groups from "Groups Available" to the list below or to remove groups from the list below and place them back in "Groups Available" or to move groups from "None of these" to "All of these"'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askNone
					getEnabled:		nil
					label:				'Default'
					help:				'Select "All of these" and make the "All of these" and "None of these" lists empty'
				.
			}.
			tmpBuilder newListFor:			tmpAgenda
				list:					#askAndCategoriesListLabels
				selected:				#askAndCategoriesListSelectedIndex
				changeSelected:		#askAndCategoriesListSelectedIndex:
				getEnabled:			nil
				help:					'"Items selected" must be members of all groups in this list. If "All of these" is selected clicking on a group name here will move it to "Groups Available". If "None of these" is selected clicking on a group name here will move it to "None of these"'
			.
			tmpBuilder newRow: {
				tmpBuilder newRadioButtonFor:	tmpAgenda
					getSelected:			#askNotCategoriesSelected
					setSelected:			#askNotCategoriesSelected:
					getEnabled:			nil
					label:					'None of these'
					help:					'Select "None of these" to add groups from "Groups Available" to the list below or to remove groups from the list below and place them back in "Groups Available" or to move groups from "All of these" to "None of these"'
				.
			}.
			tmpBuilder newListFor:			tmpAgenda
				list:					#askNotCategoriesListLabels
				selected:				#askNotCategoriesListSelectedIndex
				changeSelected:		#askNotCategoriesListSelectedIndex:
				getEnabled:			nil
				help:					'"Items Selected" must NOT be members of any group in this list. If "None of these" is selected clicking on a group name here will move it to "Groups Available". If "All of these" is selected clicking on a group name here will move it to "All of these"'
			.

"			tmpBuilder newRow: {
				tmpBuilder newRadioButtonFor:	tmpAgenda
					getSelected:			#askOrCategoriesSelected
					setSelected:			#askOrCategoriesSelected:
					getEnabled:			nil
					label:					'OR'
					help:					''
				.
			}.
			tmpBuilder newListFor:			tmpAgenda
				list:					#askOrCategoriesListLabels
				selected:				#askOrCategoriesListSelectedIndex
				changeSelected:		#askOrCategoriesListSelectedIndex:
				getEnabled:			nil
				help:					'List of Selected OR Categories'
			.
"
			tmpBuilder newRow: {
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askEditFileName
					getEnabled:		nil
					label:				'File'
					help:				'Enter or Change the file name used for import or export of data'
				.
				tmpBuilder newTextEntryFor:	tmpAgenda askFileName
					getText:				#askFileNameText
					setText:				#askFileNameText:
					help:					'Enter or Change the file name used to "Load" or "Save" data. Press Enter to confirm the new name.'
				.
			}.
		}.
		tmpBuilder newColumn: {
			tmpBuilder newLabel: 'Groups Available'.
			tmpBuilder newListFor:			tmpAgenda
				list:					#askCategories1ListLabels
				selected:				#askCategories1ListSelectedIndex
				changeSelected:		#askCategories1ListSelectedIndex:
				getEnabled:			nil
				help:					'If "All of these" is selected clicking on a group name here will move it there. If "None of these" is selected clicking on a group name here will move it there'
			.
			tmpBuilder newRow: {
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askNew
					getEnabled:		nil
					label:				'New'
					help:				'Erase data in memory'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askSave
					getEnabled:		nil
					label:				'Save'
					help:				'Save data to text file named with "File"'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askLoad
					getEnabled:		nil
					label:				'Load'
					help:				'Erase data in memory and Load data from text file named with "File"'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askMergeTest2
					getEnabled:		nil
					label:				'Merge'
					help:				'Merge Item Assignments'
				.
			}.
		}.
		tmpBuilder newColumn: {
			tmpBuilder newLabel: 'Items Selected'.
			tmpBuilder newListFor:		tmpAgenda
				list:				#askItems2ListLabels
				selected:			#askItems2ListSelectedIndex
				changeSelected:	#askItems2ListSelectedIndex:
				getEnabled:		nil
				help:				'Items selected based on groups selected in the "All of these" and "None of these" lists. Clicking an item selects it. You can add the selected item to a group by clicking on a group name in the "Item Selected Not member of" list. You can remove the selected item from a group by clicking on a group name in the "Item Selected Member of" list.'
			.
			tmpBuilder newRow: {
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askSaveSelected
					getEnabled:		nil
					label:				'Save'
					help:				'Save selected data to text file named with "File"'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askAddNewItem
					getEnabled:		nil
					label:				'Add...'
					help:				'Create a new Item. The item will become a member of the same groups as the selected item in "Items Selected" or if there is no selected item in "Items Selected" it will become a member of the groups in the "All of these" list.'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askEditItem
					getEnabled:		#askItems2ListHasSelectedIndex
					label:				'Edit...'
					help:				'Edit the selected Item in "Items Selected"'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askOpenItem
					getEnabled:		#askItems2ListHasSelectedIndex
					label:				'Open'
					help:				'Open the URL of the selected Item in "Items Selected" in a web browser'
				.
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askOpenItems
					getEnabled:		#askItems2ListHasSelectedIndex
					label:				'OpenAll'
					help:				'Open the URL of all the selected Items in "Items Selected" in a web browser'
				.
			}.
		}.
		tmpBuilder newColumn: {
			tmpBuilder newLabel: 'Item Selected Member of'.
			tmpBuilder newListFor:		tmpAgenda
				list:				#askCategories4ListLabels
				selected:			#askCategories4ListSelectedIndex
				changeSelected:	#askCategories4ListSelectedIndex:
				getEnabled:		nil
				help:				'Clicking on a group name here will remove the selected item in "Items Selected" from this group'
			.
			tmpBuilder newRow: {
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askAddNewCategory
					getEnabled:		#askItems2ListHasSelectedIndex
					label:				'Add...'
					help:				'Create a new group and add the selected item in "Items Selected" to it'
				.
			}.
		}.
		tmpBuilder newColumn: {
			tmpBuilder newLabel: 'Item Selected Not member of'.
			tmpBuilder newListFor:		tmpAgenda
				list:				#askCategories5ListLabels
				selected:			#askCategories5ListSelectedIndex
				changeSelected:	#askCategories5ListSelectedIndex:
				getEnabled:		nil
				help:				'Clicking on a group name here will add the selected item in "Items Selected" to this group'
			.
			tmpBuilder newRow: {
				tmpBuilder newButtonFor:	tmpAgenda
					action:			#askUpdateWindow
					getEnabled:		nil
					label:				'Refresh'
					help:				'Update the lists in this window'
				.
			}.
		}.
	}.


	varWindow := (varMorph openInWindowLabeled: self askTitle)
		extent: Display width@(Display height - 100);
		position: 0@0.

	tmpAgenda askUpdateWindow.

! !

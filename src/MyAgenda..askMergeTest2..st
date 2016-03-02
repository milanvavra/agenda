!MyAgenda methodsFor: 'controller' stamp: 'mv 9/7/2015 16:57'!
askMergeTest2
	| tmpFileName tmpCharCount tmpRowCount tmpColCount tmpItemCategories tmpCategoryItems tmpLine tmpItem tmpChar tmpCategory tmpItemUrl tmpItemText tmpItem2 |
	tmpFileName := self askFileName askFileNameText.
	tmpCharCount := 0.
	tmpRowCount := 0.
	tmpColCount := 0.
	tmpLine := ''.

	tmpItemCategories := self askItemCategories.
	tmpCategoryItems := self askCategoryItems.

	tmpFileName asFileReference readStreamDo: [ :tmpStream |

		[ tmpStream atEnd ] whileFalse: [
			( (tmpChar := tmpStream next) = Character lf) ifTrue: [
				tmpLine ifNotEmpty: [

					(tmpLine at: 1) = $I ifTrue: [
						tmpItem := MyItem new.
						tmpItemText := tmpLine copyFrom: 3 to: tmpLine size.
						tmpItem askItemText: tmpItemText.
					].
					(tmpLine at: 1) = $U ifTrue: [
						tmpItemUrl := tmpLine copyFrom: 3 to: tmpLine size.
						tmpItem askItemUrl: tmpItemUrl.

						tmpItem2 := tmpItemCategories keys
							 	detect: [ :tmpItem1 | tmpItem1 askItemUrl = tmpItemUrl
									and: [ tmpItem1 askItemText = tmpItemText ] ]
								ifNone: [ nil ].

						tmpItem2 ifNil: [
							tmpCategory := self askCategoryWithText: 'All'.
							(tmpItemCategories at: tmpItem ifAbsentPut: [Set new]) add: tmpCategory.
							(tmpCategoryItems at: tmpCategory ifAbsentPut: [Set new]) add: tmpItem.

							(self askComputeWordsForLine: tmpItemText) do: [ :tmpWord |
								tmpCategory := self askCategoryWithText: tmpWord.
								(tmpItemCategories at: tmpItem ifAbsentPut: [Set new]) add: tmpCategory.
								(tmpCategoryItems at: tmpCategory ifAbsentPut: [Set new]) add: tmpItem.
							].
						] ifNotNil: [
							tmpItem := tmpItem2.
						].
"
d keys detect: [ :each | Transcript show: each; cr. each = 'B'. ]
	ifFound: [ Transcript show: 'found'; cr.]
	ifNone: [ Transcript show: 'not found'; cr.].
"
					].
					(tmpLine at: 1) = $C ifTrue: [
						tmpCategory := self askCategoryWithText: (tmpLine copyFrom: 3 to: tmpLine size) .
						(tmpItemCategories at: tmpItem ifAbsentPut: [Set new]) add: tmpCategory.
						(tmpCategoryItems at: tmpCategory ifAbsentPut: [Set new]) add: tmpItem.
					].
				].

				tmpRowCount := tmpRowCount + 1.
				tmpCharCount := tmpCharCount + 1.
				tmpColCount := 0.
				tmpLine := ''.
			] ifFalse: [
				tmpLine := tmpLine, tmpChar asString.

				tmpCharCount := tmpCharCount + 1.
				tmpColCount := tmpColCount + 1.
			]
		]
	].

	Transcript show: 'lines: '; show: tmpRowCount ; cr.
	Transcript show: 'chars: '; show: tmpCharCount ; cr.

	self askItemCategories: tmpItemCategories.

	self askCategoryItems:	 tmpCategoryItems.

	self askUpdateSetsToDefault.

	self askUpdateWindow
! !

!MyAgenda methodsFor: 'model' stamp: 'mva 3/21/2015 00:36'!
askComputeWordsForLine: tmpLine
	| tmpWord tmpWords |

	tmpWords := Set new.
	tmpWord := ''.

	tmpLine do: [ :tmpChar | | tmpString |
		tmpString := tmpChar asString asLowercase.
		(tmpString >= 'a' and: [ tmpString <= 'z' ]) ifTrue:	[
			tmpWord := tmpWord, tmpString.
		] ifFalse: [
			tmpWord ifNotEmpty: [
				tmpWords add: tmpWord.
				tmpWord := ''.
			].
		]
	].
	tmpWord ifNotEmpty: [
		tmpWords add: tmpWord.
		tmpWord := ''.
	].
	^tmpWords.
! !

!MyAgenda methodsFor: 'controller' stamp: 'mva 3/15/2016 21:43'!
askOpenItem: tmpItem
	| tmp1001 |

	tmp1001 := (Smalltalk vm getSystemAttribute: 1001).

	tmp1001 = 'Mac OS'
	ifTrue: [
		"NBMacShell open: tmpItem askItemUrl"
		Smalltalk system: 'open ', tmpItem askItemUrl.
	].

	tmp1001 = 'unix'
	ifTrue: [ | tmpCommand |
		tmpCommand := 'firefox ', tmpItem askItemUrl, ' '.
		MyAgenda nbSystem: tmpCommand.
	].


	tmp1001 = 'Win32'
	ifTrue: [ NBWin32Shell shellBrowse: tmpItem askItemUrl ].
! !

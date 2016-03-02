!MyAgenda class methodsFor: 'accessing' stamp: 'MilanVavra 9/6/2015 01:56'!
nbSystem: str
"
	This is a basic example for making an external call.
	This method calls a Standard C library getenv() function
"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( int system (String str) ) module: NativeBoost CLibrary! !

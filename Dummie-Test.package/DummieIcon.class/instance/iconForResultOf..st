order
iconForResultOf: aMethod
	(aMethod hasProperty: #checker)
		ifFalse: [ ^ self iconNamed: #testNotRunIcon ].
	(aMethod propertyAt: #checker)
		ifTrue: [ ^ self iconNamed: #testGreenIcon ]
		ifFalse: [ ^ self iconNamed: #testYellowIcon ].
	^ self iconNamed: #testRedIcon.
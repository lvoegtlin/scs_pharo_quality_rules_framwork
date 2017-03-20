order
iconForResultOf: aMethod
	(aMethod hasProperty: #exampleStatus)
		ifFalse: [ ^ self iconNamed: #testNotRunIcon ].
	(aMethod propertyAt: #exampleStatus)
		ifTrue: [ ^ self iconNamed: #testGreenIcon ]
		ifFalse: [ ^ self iconNamed: #testRedIcon ].
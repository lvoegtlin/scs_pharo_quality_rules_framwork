tests
testBad
	self assert: (badExs allSatisfy: [ :ex | (RBJustSendsSuperRule new check: ex ) isNotEmpty ])
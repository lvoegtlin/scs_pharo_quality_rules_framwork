tests
testBadSuperRule
	self assert: (badExs allSatisfy: [ :ex | (RBJustSendsSuperRule new check: ex ) isNotEmpty ])
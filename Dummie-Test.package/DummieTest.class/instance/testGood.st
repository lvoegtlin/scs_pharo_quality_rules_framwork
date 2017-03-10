tests
testGood
	self assert: (goodExs allSatisfy: [ :ex | (RBJustSendsSuperRule new check: ex ) isEmpty ])
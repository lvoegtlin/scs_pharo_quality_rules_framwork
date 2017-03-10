tests
test
	^ badExs allSatisfy: [ :ex | (RBJustSendsSuperRule new check: ex ) isNotEmpty ]
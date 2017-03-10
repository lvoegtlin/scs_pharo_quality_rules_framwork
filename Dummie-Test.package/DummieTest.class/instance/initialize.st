tests
initialize
	goodExsSuper := (Pragma allNamed: #reExampleGood in: RBJustSendsSuperRule class) collect: #method.
	badExsSuper := (Pragma allNamed: #reExampleBad in: RBJustSendsSuperRule class) collect: #method.
	
	goodExs := ReRuleManager visibleRuleClasses flatCollect: 
				[ :r | (Pragma allNamed: #reExampleGood in: r class) collect: #method ].
	
	badExs := ReRuleManager visibleRuleClasses flatCollect: 
				[ :r | (Pragma allNamed: #reExampleBad in: r class) collect: #method ]
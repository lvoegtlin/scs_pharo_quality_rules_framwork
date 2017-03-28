order
check: aMethod
	| ruleClass critiques methodToTest |
	
	ruleClass := aMethod methodClass theNonMetaClass.
	
	methodToTest := (aMethod hasPragmaNamed: #reExampleObject)
		ifFalse: [ aMethod ]
		ifTrue: [ ruleClass executeMethod: aMethod ].
	
	critiques := ruleClass checksNode
		ifTrue: [ 
			methodToTest ast allChildren flatCollect: [ :node |
				ruleClass new check: node ] ]
		ifFalse: [
			ruleClass new check: methodToTest. ].
	
	aMethod propertyAt: #exampleStatus put: (
		(aMethod hasPragmaNamed: #reExampleGood)
			ifTrue: [ critiques isEmpty ]
			ifFalse: [ critiques isNotEmpty ]).
	
	"browser is a class, we take all the instances
	 and remove cache/refresh all of them"
	browser allInstancesDo: [ :browserInstance |
		browserInstance
			removeFromMethodsIconsCache: aMethod;		
			updateCategoryAndMethodList ]
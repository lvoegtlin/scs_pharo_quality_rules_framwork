order
check: aMethod
	| ruleClass critiques |
	
	ruleClass := aMethod methodClass theNonMetaClass.
	
	critiques := ruleClass checksNode
		ifTrue: [ 
			method ast allChildren flatCollect: [ :node |
				ruleClass new check: node ] ]
		ifFalse: [
			ruleClass new check: method. ].
	
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
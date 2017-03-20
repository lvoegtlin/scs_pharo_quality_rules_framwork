order
check: aMethod
	| ruleClass critiques |
	
	ruleClass := aMethod methodClass theNonMetaClass.
	critiques := ruleClass new check: method.
	
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
order
privateActionIcon
	"Return the icon for this action"
	|theMethod|
	theMethod := DummieTest>>#testBadSuperRule.
	
	^ IconicButton new
		target: DummieTest new;
		actionSelector: #setProperty:;
		arguments: {method};
		labelGraphic: (self iconForResultOf: method);
		color: Color transparent;
		helpText: 'Run the example test';
		extent: self iconExtent;
		borderWidth: 0
order
privateActionIcon
	"Return the icon for this action"
	
	
	^ IconicButton new
		target: self;
		actionSelector: #check:;
		arguments: {method};
		labelGraphic: (self iconForResultOf: method);
		color: Color transparent;
		helpText: 'Run the example test';
		extent: self iconExtent;
		borderWidth: 0
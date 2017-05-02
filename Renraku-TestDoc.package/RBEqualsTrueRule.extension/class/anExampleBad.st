*renraku-TestDoc
anExampleBad
	<reExampleBad>
	| t |
	
	t := true.
	
	^ t == true ifTrue: [ 'do something' ] ifFalse: [ 'somethign else' ].
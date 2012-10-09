metacello
selectorsForClass: aClass inClass: classBoolean level: level

	| targetClass result |
	targetClass := classBoolean 
		ifTrue: [ aClass class ] 
		ifFalse: [ aClass ].
	result := targetClass selectors sort collect: [:selector | 
		TZMethodElement new
                methodClass: targetClass ;
                selector: selector asString;
                yourself ].
	^self toString: result level: level
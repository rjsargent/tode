enumerating
keysAndValuesDo: aBlock
	1 to: tally do: [ :index | aBlock value: (keys at: index) value: (values at: index) ]
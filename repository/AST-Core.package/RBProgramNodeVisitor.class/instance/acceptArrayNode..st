visitor-double dispatching
acceptArrayNode: anArrayNode 
	anArrayNode children do: [:each | self visitNode: each]
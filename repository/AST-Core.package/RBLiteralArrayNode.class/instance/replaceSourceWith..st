private-replacing
replaceSourceWith: aNode 
	(self class = aNode class and: 
			[self isForByteArray = aNode isForByteArray 
				and: [self contents size = aNode contents size]]) 
		ifFalse: [^super replaceSourceWith: aNode].
	1 to: self contents size
		do: 
			[:i | 
			(self contents at: i) = (aNode contents at: i) 
				ifFalse: [(self contents at: i) replaceSourceWith: (aNode contents at: i)]]
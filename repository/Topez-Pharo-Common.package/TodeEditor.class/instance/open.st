initialization
open
	| window listPane codePane buttonBarPane |
	label := ''.
	updating := false.
	window := TZSystemWindow new model: self.
	listPane := self listEditor buildListMorph.
	window addMorph: listPane frame: (0 @ 0 corner: 1 @ 1).
	listPane delete.
	codePane := self codeEditor buildTextMorph.
	window addMorph: codePane frame: (0 @ 0 corner: 1 @ 1).
	codePane delete.
	buttonBarPane := self buttonBarEditor buildOverflowMorph.
	window addMorph: buttonBarPane frame: (0 @ 0 corner: 1 @ 1).
	buttonBarPane delete.
	window minimumExtent: 40 @ 40.
	window openInWorld.
	^ window
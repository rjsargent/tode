as yet unclassified
testBrowseList
  "run without errors ... to keep me honest"

  | node |
  node := self createDefinitionListNode.
  self
    evaluateCommandString: 'browse --help list';
    evaluateCommandString: 'browse list ' , node printString;
    yourself
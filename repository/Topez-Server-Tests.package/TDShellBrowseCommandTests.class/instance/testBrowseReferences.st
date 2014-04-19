as yet unclassified
testBrowseReferences
  "run without errors ... to keep me honest"

  | node defs |
  node := self createSelectBlockNode.
  self topez
    evaluateCommandString: 'browse --help references';
    evaluateCommandString: 'browse references GsNMethod';
    evaluateCommandString:
        'browse references --literal `''not yet implemented''`';
    evaluateCommandString: 'browse references --literal `#at:put:`';
    evaluateCommandString: 'browse references --literal `1.0`';
    evaluateCommandString: 'browse references --literal `#( 1 2 3)`';
    evaluateCommandString: 'browse references --literal `#[ 1 2 3]`';
    evaluateCommandString:
        'browse references --class=ClassOrganizer --literal `#at:put:`';
    evaluateCommandString:
        'browse references --class=ClassOrganizer SortedCollection';
    yourself.
  defs := self topez
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' references --literal `true`'.
  self deny: defs isEmpty
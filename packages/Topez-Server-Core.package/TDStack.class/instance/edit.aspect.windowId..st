as yet unclassified
edit: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | aWindowId clientListElement |
  anAspect == #'inspect'
    ifTrue: [ ^ super edit: aTopez aspect: anAspect windowId: inWindowId ].
  aWindowId := inWindowId.
  aWindowId == nil
    ifTrue: [ aWindowId := aTopez windowIdNamed: #'debugStack' ].
  clientListElement := self clientListElement
    topez: aTopez;
    aspect: anAspect;
    yourself.
  ^ aTopez
    editListElement: clientListElement
    label: self exception description
    inWindow: aWindowId
    at: #'debugger'
tools
enableDisableMenuItems: selectedOperation
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'fullHistory'.
  #'fileHistory'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  source notNil
    ifTrue: [ enable value: #'fullHistory' ].
  (source notNil and: [ destination notNil ])
    ifTrue: [ enable value: #'fileHistory' ].
  ^ self objectSerializer
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}
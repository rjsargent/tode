manPages
browsecategoriesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'categories'
    sourceMethod: self name asString , '>>browsecategories'
    fromString:
      'NAME
  browse categories - List class categories

SYNOPSIS
  browse categories

DESCRIPTION
  The `browse categories` command brings up a window on the list of class categories. 

EXAMPLES
  browse categories
'.
  ^ manPage
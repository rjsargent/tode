as yet unclassified
installOn: aTDTopezServer
  "#browse #view #inspect ... #view is default"

  "`edit` ---> #browse [[editor only aspect]]
   `view` ---> #view
   `inspect` ---> #inspect"

  | optionsNode |
  (aTDTopezServer ensureChildrenExistIn: '/home')
    readMe: self homeReadMe;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    installOptionsOn: aTDTopezServer.
  (Smalltalk at: #'GSNMethod' ifAbsent: [  ]) ~~ nil
    ifTrue: [ 
      TDTopezServer
        registerEditorClass: TDGsNMethodElementBuilder
        for: (Smalltalk at: #'GsNMethod')
        aspect: #'method' ]
    ifFalse: [ 
      TDTopezServer
        registerEditorClass: TDGsNMethodElementBuilder
        for: (Smalltalk at: #'GsMethod')
        aspect: #'method' ].
  TDTopezServer
    registerBuilderClass: TDDictionaryNodeBuilder
      for: AbstractDictionary
      aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder
      for: UndefinedObject
      aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder
      for: UndefinedObject
      aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'inspect';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'view';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'inspect';
    registerBuilderClass: TDCharacterNodeBuilder for: Character aspect: #'view';
    registerBuilderClass: TDCharacterNodeBuilder
      for: Character
      aspect: #'inspect';
    registerBuilderClass: TDTxtLeafNodeBuilder
      for: CharacterCollection
      aspect: #'view';
    registerBuilderClass: TDTxtLeafNodeBuilder for: Text aspect: #'view';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'view';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'inspect';
    registerEditorClass: TDClassAndMethodDefinitionsElementBuilder
      for: Collection
      aspect: #'definitionList';
    registerEditorClass: TDExternalClassAndMethodDefinitionsElementBuilder
      for: Collection
      aspect: #'externalDefinitionList';
    registerEditorClass: TDMethodDefinitionsElementBuilder
      for: Collection
      aspect: #'methodDefinitionList';
    registerEditorClass: TDConfigurationAndPackageDefinitionsElementBuilder
      for: TDDefinitionList
      aspect: #'view';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: Behavior
      aspect: #'classSelectors';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: Behavior
      aspect: #'instanceSelectors';
    registerEditorClass: TDClassHierarchyListElementBuilder
      for: Behavior
      aspect: #'browse';
    registerEditorClass: TDClassDefinitionClientElementBuilder
      for: Class
      aspect: #'classDefinition';
    registerEditorClass: TDClientObjectElementBuilder
      for: Class
      aspect: #'inspect';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMethodDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMcMethodDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMcClassDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMethodVersionDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMethodTemplateDefinition
      aspect: #'method';
    registerEditorClass: TDClientObjectElementBuilder
      for: Object
      aspect: #'view';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder
      for: TDDirectoryNode
      aspect: #'view';
    registerEditorClass: TDClientSourceElementBuilder
      for: TDLeafNode
      aspect: #'browse';
    registerEditorClass: TDClientSourceElementBuilder
      for: CharacterCollection
      aspect: #'browse';
    registerEditorClass: TDClientSourceElementBuilder
      for: Text
      aspect: #'browse';
    registerEditorClass: TDObjectLogElementBuilder
      for: TDObjectLog
      aspect: #'browse';
    registerEditorClass: TDClientScriptElementBuilder
      for: TDScriptLeafNode
      aspect: #'browse';
    registerEditorClass: TDClientCodeElementBuilder
      for: TDSmalltalkLeafNode
      aspect: #'browse';
    registerEditorClass: TDClientTextElementBuilder
      for: TDTxtLeafNode
      aspect: #'browse'
as yet unclassified
rerun
  "rerun <test-path>"

  | suitePath suiteNode testNode suite |
  suitePath := (tokens size > 1
    ifTrue: [ tokens at: 2 ]
    ifFalse: [ self defaultHomeTestPath ]) , '/suite'.
  suiteNode := self topez lookup: suitePath.
  testNode := self topez lookup: self defaultHomeTestPath.
  suite := suiteNode basicContents.
  testNode addChildNode: (self suiteNode: suite).
  ^ self run: suite testNode: testNode
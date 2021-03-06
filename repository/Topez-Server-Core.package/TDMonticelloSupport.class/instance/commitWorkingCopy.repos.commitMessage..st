commit
commitWorkingCopy: aWorkingCopy repos: targetRepos commitMessage: commitMessage
  | newVersion |
  newVersion := [ aWorkingCopy newVersion ]
    on: MCVersionNameAndMessageRequest
    do: [ :notification | 
      notification
        resume: (Array with: notification suggestedName with: commitMessage) ].
  targetRepos
    do: [ :repository | self storeVersion: newVersion inRepository: repository ].
  ^ newVersion
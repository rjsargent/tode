as yet unclassified
signalServerError: error
	"This means that errors will only show up in the topez associated with the window that initiated the session ... not quite what we want ... unless the exceptions are shared across topez instances"

	false
		ifTrue: [ self getExceptionStackFor: error ].
	^ (error asGsRuntimeException: self) signal
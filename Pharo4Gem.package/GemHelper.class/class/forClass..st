instance creation
forClass: cls
	| obj |
	obj := self new.
	obj cls: cls.
	^ obj
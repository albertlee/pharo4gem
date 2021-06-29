instance creation
exportClass: cls toFile: filepath
	| obj |
	obj := self forClass: cls.
	obj exportToFile: filepath.
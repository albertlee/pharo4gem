instance creation
exportPackage: pkgName exclude: skipClasses toDir: dirpath
	"export all classes in a pkgName to dirpath
	TODO: use more considerate file path implement.
	"

	| classes |
	classes := (RPackageOrganizer default packageNamed: pkgName) classes.
	classes 
		do: [ :cls | 
			| filepath |
			(skipClasses includes: cls asString) ifFalse: [
			filepath := dirpath , '/' , cls asString , '.topaz'.
			self exportClass: cls toFile: filepath ]]
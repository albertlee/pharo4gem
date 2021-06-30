instance creation
exportPackage: pkgName toDir: dirpath
	"export all classes in a pkgName to dirpath
	TODO: use more considerate file path implement.
	"

	| classes |
	classes := (RPackageOrganizer default packageNamed: pkgName) classes.
	classes
		do: [ :cls | 
			| filepath |
			filepath := dirpath , '/' , cls asString , '.topaz'.
			self exportClass: cls toFile: filepath ]
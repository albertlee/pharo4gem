instance creation
exportClasses: classes toDir: dirpath
	"TODO: use more considerate file path implement.
	"

	classes
		do: [ :cls | 
			| filepath |
				filepath := dirpath , '/' , cls asString , '.topaz'.
					self exportClass: cls toFile: filepath ]
				
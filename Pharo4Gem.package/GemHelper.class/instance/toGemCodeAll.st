as yet unclassified
toGemCodeAll
	| code |
	code := 'fileformat utf8
set sourcestringclass Unicode16

<1s>

<2s>

<3s>
'
		expandMacrosWithArguments:
			{self toGemClassDef.
			self toGemClassComment.
			self toGemSelectorsDef}.
	^ code withUnixLineEndings
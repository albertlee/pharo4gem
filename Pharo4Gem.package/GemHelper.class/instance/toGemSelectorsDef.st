as yet unclassified
toGemSelectorsDef
	^ String cr
		join: (cls selectors collect: [ :s | self toGemSelectorDef: (cls methodDict at: s) ])
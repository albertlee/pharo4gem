as yet unclassified
toGemClassSelectorsDef
	^ String cr
		join:
			(cls classSide selectors
				collect: [ :s | 

					self
						toGemClassSelectorDef: (cls classSide methodDict at: s asSymbol) ])
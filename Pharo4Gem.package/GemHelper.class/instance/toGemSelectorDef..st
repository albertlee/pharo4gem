as yet unclassified
toGemSelectorDef: selector
	| m |
	m := cls methodDict at: selector.
	^ 'category: ''<1s>''
method: <2s>
<3s>
%%
'
		expandMacrosWithArguments:
			{m protocol asString.
			cls asString.
			m sourceCode}
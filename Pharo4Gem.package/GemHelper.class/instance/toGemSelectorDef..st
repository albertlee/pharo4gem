as yet unclassified
toGemSelectorDef: selector
	^ 'category: ''<1s>''
method: <2s>
<3s>
%%
'
		expandMacrosWithArguments:
			{selector protocol asString.
			cls asString.
			selector sourceCode}
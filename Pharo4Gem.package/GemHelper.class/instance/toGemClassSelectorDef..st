as yet unclassified
toGemClassSelectorDef: selector
	^ 'category: ''<1s>''
classmethod: <2s>
<3s>
%%
'
		expandMacrosWithArguments:
			{selector protocol asString.
			cls asString.
			selector sourceCode}
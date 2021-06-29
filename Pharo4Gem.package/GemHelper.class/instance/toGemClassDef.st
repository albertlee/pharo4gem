as yet unclassified
toGemClassDef
	""

	| superCls clsName instVarStr code |
	superCls := cls superclass asString.
	clsName := cls asString.
	instVarStr := ' '
		join:
			(cls instVarNames
				collect: [ :v | '''<1s>''' expandMacrosWith: v asString ]).
	code := 'set compile_env: 0
! ------------------- Class definition for <1s>
expectvalue /Class
doit
<2s> subclass: ''<1s>''
    instVarNames: #(<3s>)
    classVars: #()
    classInstVars: #()
    poolDictionaries: #()
    inDictionary: UserGlobals

%%'
		expandMacrosWithArguments:
			{clsName.
			superCls.
			instVarStr}.
	^ code
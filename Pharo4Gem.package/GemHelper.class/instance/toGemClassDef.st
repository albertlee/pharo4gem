as yet unclassified
toGemClassDef
	"
infos:
superClass
instanceVariables
classInstanceVariables
classVariables
category
	
	"

	| superCls clsName instVarStr classInstVarStr classVarStr category code |
	superCls := cls superclass asString.
	clsName := cls asString.
	instVarStr := ' '
		join:
			(cls instVarNames
				collect: [ :v | '''<1s>''' expandMacrosWith: v asString ]).
	classInstVarStr := ' '
		join:
			(cls classSide instVarNames
				collect: [ :v | '''<1s>''' expandMacrosWith: v asString ]).
	classVarStr := ' '
		join:
			(cls classVarNames
				collect: [ :v | '''<1s>''' expandMacrosWith: v asString ]).
	category := cls package name asString.
	code := 'set compile_env: 0
! ------------------- Class definition for <1s>
expectvalue /Class
doit
<2s> subclass: ''<1s>''
    instVarNames: #(<3s>)
    classVars: #(<4s>)
    classInstVars: #(<5s>)
    poolDictionaries: #()
    inDictionary: ''UserGlobals''
    category: ''<6s>''
%%'
		expandMacrosWithArguments:
			{clsName.
			superCls.
			instVarStr.
			classVarStr.
			classInstVarStr.
			category}.
	^ code
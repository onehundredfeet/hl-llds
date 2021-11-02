genhl:
	haxe -cp generator  -lib hl-idl --macro "llds.Generator.generateCpp()"
	
genjs:
	haxe -cp generator -lib hl-idl --macro "llds.Generator.generateJs()"

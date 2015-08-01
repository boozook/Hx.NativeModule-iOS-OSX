package fzzr.nativemodule;

import fzzr.nativemodule.TestRegexp;

@:keep
@:keepSub
class HaxeModule
{
	//----------- properties, fields ------------//


	//--------------- constructor ---------------//
	public static function main()
	{
		var i = getInt();
		var f = getFloat();
		var b = getBool();
		var s = getString();
		var sa = getStringArray();
		var ia = getIntArray();
	}

	public function new()
	{
		trace("HaxeModule constructor()");
		Sys.println("constructor");
		localMethod();
	}


	//--------------- initialize ----------------//

	//---------------- control ------------------//

	public static function getInt():Int
	{
		return 42;
	}

	public static function getFloat():Float
	{
		return 1.042;
	}

	public static function getBool():Bool
	{
		return true;
	}

	public static function getString():String
	{
		return "forty two";
	}

	public static function getStringArray():Array<String>
	{
		return ["forty", "two"];
	}

	public static function getIntArray():Array<Int>
	{
		return [4, 2];
	}

	public static function tryTrace():Void
	{
		trace("`trace` works fine.");
		trace('TestRegexp.test() -> ${TestRegexp.test()}');
		Sys.println("`print` works fine.");
	}

	public function localMethod():Float
	{
		var result = Math.random() * 100500;
		trace('localMethod($result)');
		return result;
	}

	//----------- handlers, callbacks -----------//

	//--------------- accessors -----------------//
}
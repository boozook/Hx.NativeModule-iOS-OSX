package fzzr.nativemodule;

@:keep
@:keepSub
class TestRegexp
{
	public static function test():Bool
	{
		var s = "Regular expressions are works.";
		var rgxp = ~/\be(\w*)s\b/gi;
		return rgxp.match(s);
	}
}
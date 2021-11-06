package llds;



@:generic
class StructArray<T> {
	var _array:llds.Native.RawStructArray;
	var _default : T;

	public function new(capacity:Int, example:T) {
		_array = new llds.Native.RawStructArray(capacity, example);
		_default = example;
	}

	@:arrayAccess
	public inline function get1(key:Int) : T{
		return cast _array.GetPointer(key);
	}

	public inline function bytes() : hl.Bytes {
		return _array.GetPointer(0);
	}
	
	public inline function get2(key:Int) : T{
		var x = _array.GetPointer(key);
		return cast untyped x;
	}


}

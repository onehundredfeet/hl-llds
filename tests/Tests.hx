package ;


@:struct
class MyStruct {
    public function new() {

    }
    public var x : Int;
    public var y : Int;
}

class Tests {
    public static function main() {
//        var x = new llds.Native.StructArray(10, 5); 
        var z = new MyStruct();
        var y = new llds.StructArray(10, z);

        trace("One!");
        var ww1 = y.get1(1);
        trace("Two!");
       var ww2 = y.get2(2);
        
    }
}
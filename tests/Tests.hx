package ;

import haxe.xml.Access;
import llds.StructArray.MyCastClass;


@:struct
class MyStructStorage {
    public function new() {

    }
    public var x : Int;
    public var y : Int;

    @:from
    @:hlNative("mylib","genericbytecast")
    public static function castFromBytes( x : hl.Bytes) : MyStruct {
        return null;
    }
}
@:forward(x, y)
abstract MyStruct (MyStructStorage) from MyStructStorage to MyStructStorage {
    inline function new(i:MyStructStorage) {
        this = i;
      }
    @:hlNative("llds","genericbytecast")
    static function _castFromBytes( x : hl.Bytes) : MyStructStorage {
        return null;
    }

    @:from
    public inline static function castFromBytes( x : hl.Bytes ) {
        return new MyStruct(_castFromBytes(x));
    }
}

class Tests {
    public static function main() {
//        var x = new llds.Native.StructArray(10, 5); 
        var z = new MyStructStorage();
        var y = new llds.StructArray(10, z);

        trace("One!");
        var ww1 = y.get1(1);
        trace("Two!");
       var ww2 = y.get2(2);
        
       var zzz : MyStruct = y.bytes();


       trace("zzz" + zzz.x);

    }
}
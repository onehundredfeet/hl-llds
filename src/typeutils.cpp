#include "typeutils.hpp"

namespace llds {

int TypeUtils::SizeOfNonPtrType( hl_type *t ) {

    switch(t->kind) {
	    case HVOID: return -1;
        case HUI8: return sizeof(unsigned char);
        case HUI16: return sizeof(unsigned short);
        case HI32: return sizeof(int);
        case HI64: return sizeof(long long);
        case HF32: return sizeof(float);
        case HF64: return sizeof(double);
        case HBOOL: return sizeof(bool);
        case HSTRUCT:
            vobj *o;
            int size;
            int i;
            hl_runtime_obj *rt = t->obj->rt;
            if( rt == NULL || rt->methods == NULL ) rt = hl_get_obj_proto(t);
            size = rt->size;
            if( size & (HL_WSIZE-1) ) size += HL_WSIZE - (size & (HL_WSIZE-1));

            return size;
        default:return -1;
    }
}
}
#include "structarray.hpp"
#include "typeutils.hpp"


RawStructArray::RawStructArray(int capacity, vdynamic *example)
{
    _type = example->t;
    _capacity = capacity;
    _typeSize = llds::TypeUtils::SizeOfNonPtrType(_type);
    if (_typeSize >= 1) {
        _bytes = new unsigned char [ capacity * _typeSize];
    } else {
        printf("Unsupported sizeof\n");
        exit(-1);
    }
}

RawStructArray::~RawStructArray()
{
    delete [] _bytes;
    _bytes = nullptr;
}

void *RawStructArray::GetPointer(int idx) {
    return & _bytes[_typeSize * idx];
}
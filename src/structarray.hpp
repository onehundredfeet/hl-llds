#ifndef __STRUCT_ARRAY_H_
#define __STRUCT_ARRAY_H_

#pragma once
#include <hl.h>

class RawStructArray
{
private:
    /* data */
    int _capacity;
    hl_type *_type;
    int _typeSize;

    unsigned char *_bytes;

public:
    RawStructArray(int capacity, vdynamic *example );
    ~RawStructArray();
    
    void *GetPointer(int idx);
};




#endif
#ifndef __HL_LLDS_TYPE_UTILS_H_
#define __HL_LLDS_TYPE_UTILS_H_

#pragma once
#include <hl.h>

namespace llds {
class TypeUtils {
    public:
static int SizeOfNonPtrType( hl_type *t ) ;
};
}

#endif
#ifndef QLB_DUMMYFETCHER_H
#define QLB_DUMMYFETCHER_H

#include "imailfetcher.h"

namespace QLB {

class DummyFetcher : public QLB::IMailFetcher
{
public:
    virtual void fetchMessages( const Account& ) ;

    
};

} // namespace QLB

#endif // QLB_DUMMYFETCHER_H

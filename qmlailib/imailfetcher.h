#ifndef QLB_IMAILFETCHER_H
#define QLB_IMAILFETCHER_H

namespace QLB {

class Account;

class IMailFetcher
{
public:
    IMailFetcher();

    virtual void fetchMessages( const Account& ) = 0 ;
};

} // namespace QLB

#endif // QLB_IMAILFETCHER_H

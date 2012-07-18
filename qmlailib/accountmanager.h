#ifndef QLB_ACCOUNTMANAGER_H
#define QLB_ACCOUNTMANAGER_H

#include <QList>
#include "account.h"
#include <memory>

namespace QLB {

class Account ;

struct AccountManagerPrivate;
class AccountManager
{
public:
    AccountManager();
    ~AccountManager();

    void loadAccountsFromDisk();

    void addAccount(const Account& acc);
    QList<QLB::Account> configuredAccounts() const ;

    Account& currentAccount() const ;
private:
    std::unique_ptr<AccountManagerPrivate> m_d ;


};

} // namespace QLB

#endif // QLB_ACCOUNTMANAGER_H

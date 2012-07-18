#include "accountmanager.h"

#include <QtCore/QFile>

namespace QLB {

struct AccountManagerPrivate
{
    bool checkForSettings()
    {
    }

    //! filePath is abs path to file in which
    //! account details being stored
    void loadAccount(const QString& filePath)
    {
        if(QFile::exists(filePath))
        {

        }
    }
};

AccountManager::AccountManager():
    m_d( new AccountManagerPrivate )
{
}

AccountManager::~AccountManager()
{
}

void AccountManager::loadAccountsFromDisk()
{
    //check if our .config path is present
    // if not
    m_d->checkForSettings();
}

} // namespace QLB

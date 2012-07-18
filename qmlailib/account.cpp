#include "account.h"

namespace QLB {

Account::Account()
{
}

QList<QLB::Message> QLB::Account::localMessages() const
{
    // load from disk all messages, and then return them
}

} // namespace QLB

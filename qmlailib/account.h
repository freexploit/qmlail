#ifndef QLB_ACCOUT_H
#define QLB_ACCOUT_H

#include <QList>
#include "message.h"

namespace QLB {

class Account
{
public:
    Account();

    void connect();

    void synchronize();

    QList<QLB::Message> localMessages() const;
};

} // namespace QLB

#endif // QLB_ACCOUT_H

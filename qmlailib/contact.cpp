#include "contact.h"

namespace QLB {

struct ContactPrivate
{
    QString m_visibleName;
    QString m_mailAddress ;
    QPixmap m_contactIcon ;

};

Contact::Contact():
    m_dPtr( new ContactPrivate )
{
}

Contact::~Contact()
{
}

} // namespace QLB

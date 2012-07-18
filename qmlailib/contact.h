#ifndef QLB_CONTACT_H
#define QLB_CONTACT_H

#include <QString>
#include <QPixmap>

#include <memory>

namespace QLB {

struct ContactPrivate;

class Contact
{
public:
    Contact();
    ~Contact();

    const QPixmap& icon() const ;
    const QString& name() const ;
    const QString& mailAddress() const ;
protected:
    std::unique_ptr<ContactPrivate> m_dPtr ;
};

} // namespace QLB

#endif // QLB_CONTACT_H

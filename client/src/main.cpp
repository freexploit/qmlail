#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeView>

#include "qmlailib/accountmanager.h"
#include "cutelogger/include/Logger.h"

void initLogger()
{
}

int main(int argc, char* argv[])
{
    QApplication app(argc,argv);

    initLogger();

    int iRet=-1;
    try {
        QLB::AccountManager a ;

        a.loadAccountsFromDisk();

        QDeclarativeView v ;
        v.setSource(QUrl("qml/main.qml"));

        iRet = app.exec();
    }
    catch(const std::exception& ex)
    {}
    return iRet ;
}


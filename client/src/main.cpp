#include <QtGui/QApplication>

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
        iRet = app.exec();
    }
    catch(const std::exception& ex)
    {}
    return iRet ;
}



find_package(Qt4 4.8.0 REQUIRED QtCore QtGui QtXml QtDeclarative)

include(${QT_USE_FILE})
include_directories(.)

add_subdirectory(dummyFetcher)

set( sources
    qmlailib.cpp
    imailfetcher.cpp
    account.cpp
    message.cpp
    mailconversation.cpp
    contact.cpp
    accountmanager.cpp
)

set( headers
    qmlailib.hpp
    imailfetcher.h
    account.h
    message.h
    mailconversation.h
    contact.h
    accountmanager.h
)

add_library(qmlailib ${sources} ${headers})
target_link_libraries(qmlailib dummy_fetcher_plugin Logger)

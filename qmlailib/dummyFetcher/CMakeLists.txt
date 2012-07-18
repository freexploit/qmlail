
find_package(Qt4 4.8.0 REQUIRED QtCore QtGui QtXml QtDeclarative)

include(${QT_USE_FILE})

set( sources
    dummyfetcher.cpp
)

set( headers
    dummyfetcher.h
)

add_library(dummy_fetcher_plugin STATIC ${sources} ${headers})

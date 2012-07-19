
find_package(Qt4 4.8.0 REQUIRED QtCore QtGui QtXml QtDeclarative)

include(${QT_USE_FILE})
include_directories(../)

set( sources
  src/main.cpp
)

set( headers
)

set(qml_files
    qml/main.qml
    qml/LeftBar.qml
    qml/LeftBarMenuEntry.qml
    qml/MailBar.qml
    qml/DetailBar.qml
    qml/MailBarEntry.qml
    qml/DetailBarEntry.qml
    qml/dummydata/mailBarEntryModel.qml
    qml/dummydata/mailConversationModel.qml
)

add_executable(qmlail ${sources} ${headers} ${qml_files})
target_link_libraries( qmlail ${QT_LIBRARIES} qmlailib)

file(COPY qml DESTINATION ${CMAKE_BINARY_DIR} )

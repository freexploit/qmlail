// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    width: 300
    height: 600

    ListView {
        id: listView
        anchors.fill: parent
        model: mailConversationModel

        delegate: DetailBarEntry {
            width: parent.width
            height: 100
            from:fromValue
            to:toValue
            subject: subjectValue
            content: contentValue
        }
    }
}

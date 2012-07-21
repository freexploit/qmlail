import QtQuick 1.0

Item {
    width: 300
    height: 700

    ListView {
        id: listView
        anchors.fill: parent
        model: mailBarEntryModel
        delegate: Item {
            width: listView.width
            height: 120
            Column {
                anchors.fill: parent
                MailBarEntry {
                    width: listView.width
                    height: parent.height -1
                    entrySubject:subject
                    entryFrom: from
                }
                Rectangle {
                    width: listView.width
                    height: 1
                    color: "grey"
                }
            }
        }
    }
}

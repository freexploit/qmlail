import QtQuick 1.0

Item {
    width: 300
    height: 700

    ListView {
        id: listView
        spacing: 30
        anchors.fill: parent
        anchors.topMargin: 10
        model: mailBarEntryModel
        delegate: Item {
            width: listView.width
            height: 120
            Column {
                anchors.fill: parent
                spacing: 15
                MailBarEntry {
                    width: listView.width
                    height: 120
                    entrySubject:subject
                    entryFrom: from
                }
                Rectangle {
                    width: listView.width
                    height: 2
                    color: "grey"
                }
            }
        }
    }
}

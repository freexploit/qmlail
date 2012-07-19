import QtQuick 1.0

Item {

    property string title: "Inbox"
    property int unreadMessages: 24

    width: 100
    height: 62

    Row {
        id: row1
        anchors.fill: parent
        anchors.leftMargin: 15
        anchors.rightMargin: 10
        Text {
            width: parent.width * 0.9
            height: parent.height
            color: "white"
            text: title
            verticalAlignment: Text.AlignVCenter
            MouseArea{
                anchors.fill: parent
            }
        }
        Text {
            width: parent.width * 0.1
            height: parent.height
            color: "red"
            text: unreadMessages
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            MouseArea{
                anchors.fill: parent
            }
        }
    }
}

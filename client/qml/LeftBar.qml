import QtQuick 1.0

Item {
    id:mainItem
    width: 100
    height: 768
    property string color
    Rectangle {
        anchors.fill: parent
        color:mainItem.color

        Column {
            anchors.fill: parent

            Item {
                id: item1
                width: parent.width
                height: 0.9*parent.height
                Column {
                    width: parent.width
                    anchors.top: parent.top
                    anchors.topMargin: 40

                    LeftBarMenuEntry{
                        width: parent.width
                        height: 50
                        title: "Inbox"
                        unreadMessages: 24
                    }

                    LeftBarMenuEntry{
                        width: parent.width
                        height: 50
                        title: "Next steps"
                        unreadMessages: 12
                    }
                }
            }

            Rectangle {
                id: mailFooter
                color: "#333438"
                width: parent.width
                height: 0.1 * parent.height

                Text {
                    anchors.fill: parent
                    text: "w0lanto@gmail.com"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: "#63686E"
                }
            }
        }
    }
}

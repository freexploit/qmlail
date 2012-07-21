import QtQuick 1.0

Rectangle {
    width: 1024
    height: 768

    Row{
        anchors.fill: parent
        LeftBar {
            id: leftBar
            width: 0.2 * parent.width
            height: parent.height
            color: "#25282D"
        }

        Rectangle{
            width: 2
            height: parent.height
            color: "grey"
        }

        MailBar {
            width: 0.3 * parent.width
            height: parent.height
        }

        Rectangle{
            width: 2
            height: parent.height
            color: "grey"
            opacity: 0.4
        }

        DetailBar {
            width: 0.5 * parent.width - 5
            height: parent.height
        }
    }
}

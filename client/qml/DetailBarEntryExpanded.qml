// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    width: 400
    height: 300

    property int topMargin: 6

    Column {
        id: column1
        anchors.fill: parent

        // header
        Row {
            id: headerRow
            width: parent.width
            height: parent.height* 0.2

            // image
            Item {
                id: item1
                height: parent.height
                width: parent.height

                Rectangle {
                    width: parent.width - topMargin*2
                    height: parent.height - topMargin*2
                    color: "yellow"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            // subject + to + and from

            Column {
                id: column2
                height: parent.height
                anchors.top: parent.top
                anchors.topMargin: topMargin
                width: parent.width - item1.width

                Text {
                    width: parent.width
                    text: "Integer rhoncus sodales pretium. Pellentesque habitant morbi tristique "
                    elide: Text.ElideRight
                }
            }
        }

        Rectangle {
            id: splitter
            width: parent.width
            height: 2
            color: "grey"
        }

        Text {
            id: contectText
            width: parent.width - anchors.leftMargin - 10
            height: parent.height -headerRow.height - splitter.height
            text:"Integer rhoncus sodales pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer non commodo sem. Aliquam erat volutpat. Nullam purus felis, pellentesque nec euismod ac, adipiscing sed purus. Sed sit amet metus diam. Ut et nunc sagittis purus tempor fermentum quis in tortor. Sed in magna dolor. Vivamus sit amet elit dolor. Nullam a felis venenatis orci volutpat mollis. Integer condimentum sapien et tortor pulvinar in vulputate est aliquet. Praesent nec condimentum ligula. "
            anchors.left: parent.left
            anchors.leftMargin: item1.width
            wrapMode: Text.WordWrap
            elide: Text.ElideRight
            maximumLineCount: 20
        }
    }
}

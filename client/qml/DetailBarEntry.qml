// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id:detailBarEntryMainItem
    property string from
    property string to
    property string subject
    property string content

    width: 100
    height: 62

    Column{
        anchors.fill: parent
        Row {
            width: parent.width
            height: 0.4*parent.height

            Rectangle {
                width: 0.2* parent.width
                height: parent.height
                color: "black"
            }

            Column {
                width: parent.width*0.6
                height: parent.height

                // from
                Text {
                    width: parent.width
                    height: parent.height*0.5
                    text: detailBarEntryMainItem.from
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                // to
                Text {
                    width: parent.width
                    height: parent.height*0.5
                    text: detailBarEntryMainItem.to
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        CustomTextBox {
            width: parent.width
            height: 0.6*parent.height
            text: detailBarEntryMainItem.content
            wrapMode: Text.WrapAnywhere
            horizontalAlignment: Text.AlignLeft

            maxHeight: 40

        }
    }
}

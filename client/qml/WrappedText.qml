import QtQuick 1.1

Item {

    property alias text:textField.text
    property alias wrapMode: textField.wrapMode
    property alias verticalAlignment: textField.verticalAlignment
    property alias horizontalAlignment: textField.horizontalAlignment

    property alias font: textField.font
    property alias color: textField.color
    property alias maximumLineCount: textField.maximumLineCount



    width: 100
    height: 100

    Text {
        id:textField
        anchors.fill: parent
        elide: Text.ElideRight
    }
}

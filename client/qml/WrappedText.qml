// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {

    property alias text:textField.text
    property alias wrapMode: textField.wrapMode
    property alias verticalAlignment: textField.verticalAlignment
    property alias font: textField.font
    property alias color: textField.color

    property int maxHeight: 40

    width: 100
    height: 100

    Component.onCompleted: {

        if( textField.paintedHeight > maxHeight ) {

        }

    }


    Text {
        id:textField
        anchors.fill: parent
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    }
}


import QtQuick 1.0

Item {

    id:mainItem
    property alias text: textField.text
    property int maxHeight
    property alias wrapMode: textField.wrapMode
    property alias horizontalAlignment: textField.horizontalAlignment
    property alias verticalAlignment: textField.verticalAlignment
    property alias font: textField.font

    onTextChanged: {
    }

    Component.onCompleted: {

        console.debug(textField.paintedHeight)
        console.debug(mainItem.maxHeight)
        if( textField.paintedHeight > mainItem.maxHeight) {
            console.log("String has changed")
            textField.text = textField.text.substring(0,24)+"...";

            console.log(textField.text)
            // try to shorten text
        }

    }

    width: 100
    height: 62

    Text {
        id: textField
        anchors.fill: parent
    }
}

import QtQuick 1.0

Item {

    property alias text:textField.text
    property alias wrapMode: textField.wrapMode
    property alias verticalAlignment: textField.verticalAlignment
    property alias horizontalAlignment: textField.horizontalAlignment

    property alias font: textField.font
    property alias color: textField.color

    property int maxHeight:height
    property int maxWidth: width

    property string originalText: text

    property int currentLength: textField.text.length

    function check() {
        console.debug("Oh! Let's check")
        console.debug("textField.paintedWidth"+textField.paintedWidth)
        console.debug("maxWidth"+maxWidth)

        if ( maxWidth === 0 ) {
            return
        }

        if ( textField.wrapMode === Text.NoWrap ) {
            // check [] ..
            if ( textField.paintedWidth > maxWidth ) {
                var t = ((textField.paintedWidth-maxWidth)/textField.font.pixelSize)+2
                currentLength = currentLength-t
                textField.text = originalText.substring(0,currentLength) + "..."
                check()
            }
        }
    }

    width: 100
    height: 100

    Component.onCompleted: {
        check()
    }

    onWidthChanged: {
        check()
    }

    onTextChanged: {
        originalText = text
        check()
    }


    Text {
        id:textField
        anchors.fill: parent
    }
}

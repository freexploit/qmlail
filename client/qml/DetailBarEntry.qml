// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id:detailBarEntryMainItem
    property string fromName: "Alvarez Alvarado"
    property string fromEmail: "alvarez.aa@gmail.com"
    property string toName: "Me"
    property string toEmail: "w0lanto@gmail.com"
    property string subject: "Vestibulum enim est, euismod ut interdum sit amet, rutrum a arcu. Sed pulvinar justo eu libero tempor sit amet sodales turpis dapibus"
    property string content: "Integer rhoncus sodales pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer non commodo sem. Aliquam erat volutpat. Nullam purus felis, pellentesque nec euismod ac, adipiscing sed purus. Sed sit amet metus diam. Ut et nunc sagittis purus tempor fermentum quis in tortor. Sed in magna dolor. Vivamus sit amet elit dolor. Nullam a felis venenatis orci volutpat mollis. Integer condimentum sapien et tortor pulvinar in vulputate est aliquet. Praesent nec condimentum ligula. "

    property int extendedHeight: 340
    property int normalHeight: 40

    width: 500
    height: normalHeight

    color: "pink"
    radius: 5

    state: "Shorten"

    MouseArea {
        anchors.fill: parent

        onClicked: {
            if ( detailBarEntryMainItem.state === "Shorten") {
                detailBarEntryMainItem.state = "Enlarged"
            }
            else
                detailBarEntryMainItem.state = "Shorten"
        }
    }

    Column {
        id: shortenLayout
        anchors.leftMargin: 10
        anchors.fill: parent

        Row {
            width: parent.width
            height: parent.height/2
            spacing: 20


            Text {
                id: fromText
                text: fromName
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: parent.height
                color: "blue"
                font.bold: true
                elide: Text.ElideRight
            }

            Text {
                id: toText
                text: "to " + toName
                height: parent.height
                elide: Text.ElideRight
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: when
                text: "9:45 PM 12.09.2012"
                height: parent.height
                elide: Text.ElideRight
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        WrappedText {
            text: subject
            width: parent.width
            height: parent.height/2
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrap: true
        }

        Behavior on opacity {
            NumberAnimation {duration: 300}
        }
    }

    DetailBarEntryExpanded {
        id: enlargedColumn
        anchors.fill: parent

        Behavior on opacity {
            NumberAnimation {duration: 300}
        }
    }


    states: [
        State {
            name: "Shorten"
            PropertyChanges {target: detailBarEntryMainItem; height: normalHeight }
            PropertyChanges {target: shortenLayout; opacity: 1 }
            PropertyChanges {target: enlargedColumn; opacity: 0 }
        },

        State {
            name: "Enlarged"
            PropertyChanges {target: detailBarEntryMainItem; height: extendedHeight }
            PropertyChanges {target: shortenLayout; opacity: 0 }
            PropertyChanges {target: enlargedColumn; opacity: 1 }
        }
    ]

    Behavior on height {
        NumberAnimation {duration: 300}
    }


}

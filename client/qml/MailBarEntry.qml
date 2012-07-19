// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: mainItem
    width: 300
    height: 100
    state: "Normal"

    property string entryFrom: "<FROM>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id diam vel eros sodales convallis in eget leo"
    property string entrySubject: "<SUBJECT>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id diam vel eros sodales convallis in eget leo"
    property string entryContent: "<CONTENT>Sed ipsum augue, congue quis aliquam ac, facilisis eu magna. Morbi placerat enim sed nisi congue non mollis erat vestibulum. Nam sodales auctor lobortis. In eget nibh quis purus pharetra dignissim in eu augue. Vestibulum ut quam eget orci ultrices ornare. Nulla varius mauris et nisi porttitor semper. Nulla pellentesque diam quis est porttitor et placerat lacus imperdiet. Donec molestie molestie erat quis rutrum. Aenean tempus venenatis dolor, a semper tortor gravida fringilla. Donec vel libero lectus. Proin vitae erat diam. Integer consequat metus sit amet lectus imperdiet vestibulum. Maecenas pulvinar lorem laoreet odio tempor eget tempor eros porttitor. In sed massa sit amet turpis aliquam malesuada ac auctor enim. Ut faucibus, enim quis viverra pulvinar, augue enim vestibulum metus, ut venenatis leo nulla vel erat. Sed turpis turpis, pulvinar quis ornare ut, scelerisque vel purus."

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            mainItem.state="Expanded"
        }

        onExited: {
            mainItem.state="Normal"

        }
    }

    Rectangle {
        color: "#78939191"
        radius: 5
        border.color: "#f3f3f3"
        anchors.fill: parent

        Row {
            anchors.fill: parent
            spacing: 5

            Column {
                id: buttons
                height: parent.height
                width: 0

                Behavior on width {
                    NumberAnimation{ duration: 300 }
                }

                Rectangle {
                    width: parent.width
                    height: parent.height/3
                    color: "Red"
                }

                Rectangle {
                    width: parent.width
                    height: parent.height/3
                    color: "green"
                }

                Rectangle {
                    width: parent.width
                    height: parent.height/3
                    color: "blue"
                }
            }

            Column {
                id: texts
                spacing: 0
                height: parent.height
                width: parent.width - buttons.width
                anchors.leftMargin: 5

                Text {
                    id: fromText
                    text: entryFrom
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    font.pointSize: 14
                    width: parent.width
                    height: 0.3* parent.height
                }

                Text {
                    id: subjectText
                    text: entrySubject
                    wrapMode: Text.NoWrap
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 11
                    width: parent.width
                    height: 0.3* parent.height
                }

                WrappedText{
                    id: contentText
                    text: entryContent
                    font.pointSize: 8
                    width: parent.width
                    height: 0.4* parent.height
                    color: "gray"
                }
            }
        }
    }

    states: [
        State {
            name: "Normal"
            PropertyChanges { target: buttons; width:0}
            PropertyChanges { target: texts; width:parent.width - buttons.width}
        },
        State {
            name: "Expanded"
            PropertyChanges { target: buttons; width:40}
            PropertyChanges { target: texts; width:parent.width - buttons.width}
        }
    ]
}

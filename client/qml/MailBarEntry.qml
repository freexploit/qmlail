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

    property int textMargin: 10

    signal priorityClicked(int prio)

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            if ( mainItem.state==="Expanded") {
                mainItem.state="Normal"
            }
            else
                mainItem.state="Expanded"
        }

        onExited: {
            mainItem.state="Normal"
        }

        Item {
            anchors.fill: parent

            Row {
                id: row1
                anchors.fill: parent

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
                        color: "#EA1100"
                        MouseArea {
                            hoverEnabled: true
                            anchors.fill: parent
                            onEntered: { textBox.opacity=1 }
                            onExited: {textBox.opacity=0 }

                            onClicked: {
                                priorityClicked(0)
                            }

                            Text {
                                id: textBox
                                anchors.fill: parent
                                font.pointSize: 24
                                text: "+"
                                opacity: 0
                                color: "white"
                                verticalAlignment: "AlignVCenter"
                                horizontalAlignment: "AlignHCenter"
                                Behavior on opacity {
                                    NumberAnimation{ duration: 300 }
                                }
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle1
                        width: parent.width
                        height: parent.height/3
                        color: "#EF6C62"
                        MouseArea {
                            hoverEnabled: true
                            anchors.fill: parent
                            onEntered: { textBox2.opacity=1 }
                            onExited: {textBox2.opacity=0 }

                            onClicked: {
                                priorityClicked(1)
                            }

                            Text {
                                id: textBox2
                                anchors.fill: parent
                                font.pointSize: 24
                                text: "+"
                                opacity: 0
                                color: "white"
                                verticalAlignment: "AlignVCenter"
                                horizontalAlignment: "AlignHCenter"
                                Behavior on opacity {
                                    NumberAnimation{ duration: 300 }
                                }
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle2
                        width: parent.width
                        height: parent.height/3
                        color: "#F3C7C4"
                        MouseArea {
                            hoverEnabled: true
                            anchors.fill: parent
                            onEntered: { textBox3.opacity=1 }
                            onExited: {textBox3.opacity=0 }

                            onClicked: {
                                priorityClicked(2)
                            }

                            Text {
                                id: textBox3
                                anchors.fill: parent
                                font.pointSize: 24
                                text: "+"
                                opacity: 0
                                color: "white"
                                verticalAlignment: "AlignVCenter"
                                horizontalAlignment: "AlignHCenter"
                                Behavior on opacity {
                                    NumberAnimation{ duration: 300 }
                                }
                            }
                        }
                    }
                }

                Column {
                    id: texts
                    height: parent.height
                    width: parent.width - buttons.width -textMargin

                    Text {
                        id: fromText
                        text: entryFrom
                        anchors.left: parent.left
                        anchors.leftMargin: textMargin
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        font.pointSize: 14
                        width: parent.width - textMargin
                        height: 0.3* parent.height
                        elide: Text.ElideRight
                    }

                    Text {
                        id: subjectText
                        text: entrySubject
                        wrapMode: Text.NoWrap
                        anchors.left: parent.left
                        anchors.leftMargin: textMargin
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 11
                        width: parent.width - textMargin
                        height: 0.3* parent.height
                        elide: Text.ElideRight
                    }

                    Text {
                        id: contentText
                        text: entryContent
                        font.pointSize: 8
                        width: parent.width - textMargin
                        height: 0.4* parent.height
                        color: "gray"
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        maximumLineCount: 3
                        elide: Text.ElideRight
                        anchors.left: parent.left
                        anchors.leftMargin: textMargin
                    }
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

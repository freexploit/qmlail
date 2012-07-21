// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    width: 300
    height: 600

    ListView {
        id: listView
        anchors.topMargin: 10
        anchors.fill: parent
        model: mailConversationModel

        spacing: 5

        delegate: DetailBarEntry {
            width: listView.width
            fromEmail:fromEmailValue
            fromName:fromNameValue
            toName:toNameValue
            toEmail: toEmailValue
            subject: subjectValue
            content: contentValue
        }
    }
}

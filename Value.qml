import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2


Item {
    id:input
    width:400
    height:300

    MqttItem{
        id:initem
        anchors.fill: parent
        onNameChanged: name.text = initem.name
        onMessageChanged: message.text = initem.message
        Rectangle{
            anchors.fill: parent

            Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter

                    spacing: 5

                    Rectangle {/* color: "lightblue"; radius: 10.0*/
                                width: input.width; height: 50
                                Label { id: message; anchors.centerIn: parent
                                text: qsTr("Message")} }
                    Rectangle {/* color: "gold"; radius: 10.0*/
                                width: input.width; height: 50
                                Label {
                                    id: name
                                    text: qsTr("Label")
                                    anchors.centerIn: parent } }


            }

        }
    }
    Component.onCompleted: initem.m_topic = "value"

}

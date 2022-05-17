import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2


Item {
    id:value
    width:400
    height:300
    property string name: "label.name"
    property string topic: "topic"

    MqttItem{
        id:initem
        anchors.fill: parent
        onNameChanged: name.text = initem.name
        onMessageChanged: { console.log("onMessageChanged")
            message.text = initem.m_message}
        Rectangle{
            anchors.fill: parent

            Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter

                    spacing: 5

                    Rectangle {/* color: "lightblue"; radius: 10.0*/
                                width: value.width; height: 50
                                Label { id: message; anchors.centerIn: parent
                                text: qsTr("Message")} }
                    Rectangle {/* color: "gold"; radius: 10.0*/
                                width: value.width; height: 50
                                Label {
                                    id: name
                                    text: value.name
                                    anchors.centerIn: parent } }


            }

        }
    }
    Component.onCompleted: {initem.setTopic(value.topic)
        initem.emitReceivedMessage()
        initem.m_topic = value.topic}

}

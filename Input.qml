import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2


Item {
    id:input
//    width:400
//    height:300
    anchors.fill: parent

    property string name: "label.name"
    property string topic: "topic"

    MqttItem{
        id:initem
        anchors.fill: parent
        onNameChanged: name.text = initem.name

        Rectangle{
            anchors.fill: parent

            Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter

                    spacing: 5

                    Rectangle {
                                id:first
                                width: input.width; height: 50
                                TextField { id: textField; anchors.centerIn: parent
                                placeholderText: qsTr("Text Field")} }
                    Rectangle {
                                id:second
                                width: input.width; height: 50
                                Button { id: send; anchors.centerIn: parent
                                text: qsTr("Publish")
                                onClicked:{initem.publishInTopic(initem.m_topic, textField.text)
                                    }} }
                    Rectangle {
                        id:third
                                width: input.width; height: 50
                                Label {
                                    id: name
                                    text: input.name
                                    anchors.centerIn: parent } }


            }

        }
    }
    Component.onCompleted: initem.m_topic = input.topic

}

import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2


Item {
    id:input
    width:400
    height:300

    InputItem{
        id:initem
        anchors.fill: parent
        onNameChanged: name.text = initem.name

        Rectangle{
            anchors.fill: parent

            Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter

                    spacing: 5

                    Rectangle {/* color: "lightblue"; radius: 10.0*/
                                width: input.width; height: 50
                                TextField { id: textField; anchors.centerIn: parent
                                placeholderText: qsTr("Text Field")} }
                    Rectangle {/* color: "lightblue"; radius: 10.0*/
                                width: input.width; height: 50
                                Button { id: send; anchors.centerIn: parent
                                text: qsTr("Publish")
                                onClicked:{initem.publishInTopic(initem.topic, textField.text)
                                    /*initem.message = textField.text*/}} }
                    Rectangle {/* color: "gold"; radius: 10.0*/
                                width: input.width; height: 50
                                Label {
                                    id: name
                                    text: qsTr("Label")
                                    anchors.centerIn: parent } }


            }

        }
    }
    Component.onCompleted: initem.m_topic = "input"

}

import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtCharts 6.2

Item {
    id: switemroot
    anchors.fill: parent
    //    width: 300; height: 200
    property string name: "label.name"
    property string topic: "topic"
    property Item children: Item{}
    MqttItem{
        id:switem
        anchors.fill: parent
        onNameChanged: name.text = initem.name
        Rectangle{
            id: root
            anchors.fill: parent

            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                spacing: 5

                Rectangle { /*color: "lightblue"; radius: 10.0*/
                    id:content
                    children: switemroot.children
                    width: switem.width; height: 50

                    Rectangle { /*color: "gold"; radius: 10.0*/
                        width: switem.width; height: 50
                        Label {
                            id: label
                            text: switemroot.name
                            anchors.centerIn: parent } }
                }

            }
            Component.onCompleted: switem.m_topic = switemroot.topic
        }


    }
}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/

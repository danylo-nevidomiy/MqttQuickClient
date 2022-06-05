import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtCharts 6.2

//Item {
//    id: baseitem
//    anchors.fill: parent
//    //    width: 300; height: 200

    MqttItem{
        id:baseitem
        anchors.fill: parent
        onNameChanged: name.text = baseitem.name
        property string name;
        property string topic;
        property string on_value;
        property string off_value;
        property Item first;
        property Item second;
        Rectangle{
            id: root
            anchors.fill: parent

            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

//                spacing: 5

//                Rectangle {
//                    visible:false
//                    width: baseitem.width; height: 50
//                }

                Rectangle {
                    id:first
                    children: baseitem.first
                    width: baseitem.width; height: 50
                }

                Rectangle {
                    id:second
                    children: baseitem.second
                    width: baseitem.width; height: 50
                }
                Rectangle {
                    id:third
                    width: baseitem.width; height: name.height
                    Label {
                        id: name
                        text: baseitem.name
                        anchors.centerIn: parent } }
            }

        }
        Component.onCompleted: baseitem.m_topic = baseitem.topic
    }


//}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/

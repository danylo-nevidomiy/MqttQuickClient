import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 6.2


Rectangle {
    id:root
    property string name;
    property string topic;
    property int min: -100
    property int max: 100
    property int def: 0
    property int column: 0
    property int row: 0
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: root.row
    Layout.column: root.column


    MqttItem {
        id:baseitem
//        name:root.name
//        topic:root.topic
        anchors.fill:parent
        property int value: 0
        onMessageChanged: {
            var val = Number(baseitem.m_message)
            if(val>=min && val<=max){
            baseitem.value = val
            }else if(val<min){
            baseitem.value = min
            }else{
            baseitem.value = max
            }
            }
        Rectangle{
            anchors.fill:parent
            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                spacing: 5


                Rectangle{
                    id:first
                    width: baseitem.width; height: baseitem.height-third.height
                    Image {
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        anchors.left: parent.left
                        fillMode: Image.PreserveAspectFit
                        source: "speedometer-needle.jpeg"//"pngegg.png"
                    }
                    Image {
                        id: needle
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        height:parent.height/2
                        width: sourceSize.width/sourceSize.height*needle.height
//                        anchors.top: parent.top
//                        anchors.bottom: parent.bottom
//                        anchors.right: parent.right
//                        anchors.left: parent.left
//                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                        source: "needle.png"
                        transform: Rotation {
                            id: needleRotation
                            origin.x: needle.width/2; origin.y: needle.height
                            //! [needle angle]
                            angle: baseitem.value//Math.min(Math.max(-130, root.value*2.6 - 130), 133)
                            Behavior on angle {
                                SpringAnimation {
                                    spring: 1.4
                                    damping: .15
                                }
                            }
                            //! [needle angle]
                        }
//                         Component.onCompleted: {console.log("n.h: " + needle.height)}
                    }
//                    Component.onCompleted: {console.log("f.h: " + first.height)}
                }
                Rectangle {
                    id:third
                    width: baseitem.width; height: name.height*2
                    Label {
                        id: name
                        text: root.name
                        anchors.centerIn: parent } }

            }
        }
        Component.onCompleted: {
            baseitem.setTopic(root.topic)

        }
    }
}

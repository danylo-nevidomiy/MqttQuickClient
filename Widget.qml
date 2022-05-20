import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.1


Rectangle {
    id:widget
        property string name: "label.name"
        property string topic: "topic"

    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: 0
    Layout.column: 0


    children: SwitchItem{
        children: Switch { id: switch1; anchors.centerIn: parent
            text: qsTr("Switch")
            checked: false
            onClicked: {
                if(switch1.checked === true){
                    switem.publishInTopic(switem.m_topic, switem.m_onValue)}
                else{
                    switem.publishInTopic(switem.m_topic, switem.m_offValue)}
            }} }








    //    MqttItem{
    //        id:switem
    ////        anchors.fill: parent
    //        onNameChanged: name.text = initem.name
    //        Rectangle{
    //            id: root
    //            anchors.fill: parent

    //            Column {
    //                anchors.horizontalCenter: parent.horizontalCenter
    //                anchors.verticalCenter: parent.verticalCenter

    //                spacing: 5

    //                Rectangle { /*color: "lightblue"; radius: 10.0*/
    //                    width: switem.width; height: 50
    //                    Switch { id: switch1; anchors.centerIn: parent
    //                        text: qsTr("Switch")
    //                        checked: false
    //                    onClicked: {
    //                        if(switch1.checked === true){
    //                        switem.publishInTopic(switem.m_topic, switem.m_onValue)}
    //                        else{
    //                        switem.publishInTopic(switem.m_topic, switem.m_offValue)}
    //                        }} }
    //                Rectangle { /*color: "gold"; radius: 10.0*/
    //                    width: switem.width; height: 50
    //                    Label {
    //                        id: label
    //                        text: switemroot.name
    //                        anchors.centerIn: parent } }
    //            }

    //        }
    //        Component.onCompleted: switem.m_topic = switemroot.topic
    //    }
}


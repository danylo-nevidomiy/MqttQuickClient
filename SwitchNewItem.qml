import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.1

Rectangle {
    id:root
    property string name_switch: "Switch"
    property string name;
    property string topic;
    property int column: 0
    property int row: 0
    property string on_value: "1"
    property string off_value: "0"
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: root.row
    Layout.column: root.column
    BaseItem{
        id:baseitem
        first:Switch{
            id: switch1
            anchors.centerIn: parent
            text: qsTr(name_switch)
            checked: false
            onClicked: {
                if(switch1.checked === true){
                    baseitem.publishInTopic(baseitem.m_topic, baseitem.m_onValue)}
                else{
                    baseitem.publishInTopic(baseitem.m_topic, baseitem.m_offValue)}
            }
        }
        name:root.name
        topic:root.topic
        on_value: root.on_value
        off_value: root.off_value
        Component.onCompleted:{
            baseitem.m_topic = baseitem.topic
            baseitem.m_onValue = baseitem.on_value
            baseitem.m_offValue = baseitem.off_value
        }
    }
}

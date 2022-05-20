import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.1

Rectangle {
    id:root
    property string name;
    property string topic;
    property int column: 0
    property int row: 0
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
            text: qsTr("Switch")
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
    }
}

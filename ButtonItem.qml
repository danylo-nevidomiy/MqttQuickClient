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
    property string value;
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: root.row
    Layout.column: root.column
    BaseItem{
        id:baseitem
        first:Button{
            id: button
            anchors.centerIn: parent
            text: qsTr("Button")
            onClicked:
                    baseitem.publishInTopic(baseitem.m_topic, baseitem.on_value)
        }
        name:root.name
        topic:root.topic
        on_value: root.value
        Component.onCompleted:{
            baseitem.m_topic = baseitem.topic
        }
    }
}

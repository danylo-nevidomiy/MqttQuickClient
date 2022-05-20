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
        onMessageChanged: {
            message.text = baseitem.m_message}
        first:
            Label {
            id: message
            anchors.centerIn: parent
            text: qsTr("Message")}

        name:root.name
        topic:root.topic
        Component.onCompleted: {
            baseitem.setTopic(baseitem.topic)
        }
    }
}

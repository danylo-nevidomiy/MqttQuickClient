import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.1

Rectangle {
    id:root
    property string name_slider: "Slider"
    property string name;
    property string topic;
    property int column: 0
    property int row: 0
    property int min: 0
    property int max: 100
    property bool intValue: true
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: root.row
    Layout.column: root.column
    BaseItem{
        id:baseitem
        first:Slider{
            id: slider
            from: baseitem.on_value
            to:baseitem.off_value
            anchors.centerIn: parent
//            anchors.left: baseitem.left
//            anchors.right: baseitem.right
            width:baseitem.width*0.8

//            text: qsTr(name_slider)

            onMoved: {
                var value
                if(root.intValue){
                    value = Math.round(slider.value)
                }else{
                    value = slider.value
                }
                    baseitem.publishInTopic(baseitem.m_topic, value)}
            }

        name:root.name
        topic:root.topic
        on_value: root.min
        off_value: root.max
    }
}

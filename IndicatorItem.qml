import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 6.2


Rectangle {
    id:root
    property string name;
    property string topic;
    property int column: 0
    property int row: 1
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: root.row
    Layout.column: root.column


    MqttItem {
        id:baseitem
        anchors.fill:parent
        Rectangle{
            anchors.fill:parent
            color: "yellow"
            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                spacing: 5


                Rectangle{
                    width: baseitem.width; height: baseitem.height-third.height
                    Image {
                        width:parent.height/sourceSize.height*sourceSize.width
                        height:parent.height/sourceSize.height*sourceSize.height
                        anchors.centerIn: parent
//                        x:(parent.width-parent.height)/2
                        source: "speedometer-needle.jpeg"//"pngegg.png"
                    }
                }
                Rectangle {
                    id:third
                    width: baseitem.width; height: name.height*2
//                    Layout.minimumHeight:name.minimumPixelSize
                    Label {
                        id: name
                        text: qsTr("Label")//baseitem.name
                        anchors.centerIn: parent } }

            }
        }
    }
}

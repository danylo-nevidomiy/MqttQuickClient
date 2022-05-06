import QtQuick 2.0
import QtQuick.Controls 6.2

Item {
    width: 300; height: 200
    Rectangle{
        id: root
        anchors.fill: parent

        Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                spacing: 5

                Rectangle { /*color: "lightblue"; radius: 10.0*/
                            width: root.width; height: 50
                            Switch { id: switch1; anchors.centerIn: parent
                            text: qsTr("Switch")} }
                Rectangle { /*color: "gold"; radius: 10.0*/
                            width: root.width; height: 50
                            Label {
                                id: label
                                text: qsTr("Label")
                                anchors.centerIn: parent } }
            }

}
}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/

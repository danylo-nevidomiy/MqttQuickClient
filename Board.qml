import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Layouts 1.1

Item{
    width: 480
    height: 480
    Rectangle {
        visible: true
       anchors.fill: parent
        //    title: qsTr("Hello World")

        GridLayout {
            id: grid
            anchors.fill: parent

            rows: 3
            columns: 3

            Rectangle {
                color: "red"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 0
                Layout.column: 0
                //            SwitchItem{name:"SwitchName1"}
            }

            Rectangle {
                color: "blue"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 1
            }

            Rectangle {
                color: "green"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 2
                Layout.column: 2
            }

            Rectangle {
                color: "white"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 2
            }

            Rectangle {
                color: "yellow"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 2
                Layout.column: 1
            }
        }
    }
}

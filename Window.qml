import QtQuick
import QtCore
import QtQuick.Window
import QtQuick.Controls
import MqttClient 1.0
//import "/Rect.qml" as rc

ApplicationWindow {
    id: window
    width: 1024
    height: 600
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            Action { text: qsTr("&New...") }
            Action { text: qsTr("&Open...") }
            Action { text: qsTr("&Save") }
            Action { text: qsTr("Save &As...") }
            MenuSeparator { }
            Action { text: qsTr("&Quit") }
        }
        Menu {
            title: qsTr("&Edit")
            Action { text: qsTr("Cu&t") }
            Action { text: qsTr("&Copy") }
            Action { text: qsTr("&Paste") }
        }
        Menu {
            title: qsTr("&Help")
            Action { text: qsTr("&About") }
        }
    }

    Rectangle{
        id:root
        width: 1024
        height: 600
        color: "lightgreen"
//    Rect{width:parent.width;height: parent.height}
//        SwitchItem{}
        Input{}
        Value{}
//    Board{width:parent.width;height: parent.height}

}



}

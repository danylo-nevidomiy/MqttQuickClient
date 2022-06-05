import QtQuick
import QtCore
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Dialogs
import MqttClient 1.0

ApplicationWindow {
    id: window
    width: 1024
    height: 600
    visible: true
    property string source;
    Loader {

        id: openDialog
        source: "OpenDialog.qml"
    }


    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            Action { text: qsTr("&New...") }
            Action { text: qsTr("&Open...")
            onTriggered: openDialog.item.open()
            }
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
    Board{id:board}



}

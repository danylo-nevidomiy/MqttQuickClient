import QtQuick
import QtCore
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Dialogs
import MqttClient 1.0
import Qt.labs.settings
import Qt.labs.platform 1.1 as Platform

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
//            Action { text: qsTr("&New...") }
            Action { text: qsTr("&Open...")
                onTriggered: openDialog.item.open()
            }
            Menu{title: qsTr("&Recently opened...")
                Action { text: qsTr(getLastOpenedName())
                    onTriggered:board.openSpace(settings.lastOpened)
                }
            }
            MenuSeparator { }
            Action { text: qsTr("&Quit")
                onTriggered: Qt.quit()
            }
        }
        Menu {
            title: qsTr("&Edit")
            Action { text: qsTr("Cu&t") }
            Action { text: qsTr("&Copy") }
            Action { text: qsTr("&Paste") }
        }
        Menu {
            title: qsTr("&Help")
            Action { text: qsTr("&About")
//            onTriggered: aboutDialog.open()
            }
        }
    }
    Board{id:board}


    Settings{
        id:settings
        property alias width: window.width
        property alias height: window.height
        property url lastOpened;
    }
    function getLastOpenedName(){
        var l = settings.lastOpened.toString().split("/");
        return l[l.length-2] + "/" + l[l.length-1]
    }

//    Platform.MessageDialog {
//        id: aboutDialog
//        modal: false
//        title: qsTr("About")
//        text: "MQTT Control Panel"
//        informativeText: "Source Code: https://github.com/danylo-nevidomiy/MqttQuickClient"
//        Platform.standardButtons: Dialog.Ok
//    }

}

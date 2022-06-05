import QtQuick
import QtCore
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Dialogs
import MqttClient 1.0
//import "InitialItem.qml" as II
//import "/Rect.qml" as rc

ApplicationWindow {
    id: window
    width: 1024
    height: 600
    visible: true
    property string source;

//    Loader{
//        id:dialLoader
//        source: "Board.qml"
//    }
//    Connections{
//        target: dialLoader.item
//        function onchooseQML()
//        {
//            openDialog.open()
//        }
//    }
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


//    Rectangle{
//        id:root
//        anchors.fill: parent
//        color: "lightgreen"
//    Rect{width:parent.width;height: parent.height}
//        SwitchItem{}
//        Input{}
//        Value{}
    Board{id:board}

//             Space{color: "green";anchors.fill: parent}



//}



}

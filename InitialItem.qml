import QtQuick 2.0
import QtQuick.Controls
import QtQuick.Dialogs

Rectangle{
    color: "orange"
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Label {
            id: name
            text: "Choose panel"
        }
        Button{
            text: qsTr("select")
            onClicked: {
                board.chooseQML()
                console.log("Selected = ")
                openDialog.item.open()
            }
        }
    }
    Loader {

        id: openDialog
        source: "OpenDialog.qml"
    }
}


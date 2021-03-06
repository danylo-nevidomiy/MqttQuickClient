import QtQuick 2.0
//import QtQuick.Controls
import QtQuick.Dialogs

FileDialog {
    id: openDialog
    fileMode: FileDialog.OpenFile
    title: "Please choose a file";
    nameFilters: ["QML Files (*.qml)"];
    onAccepted: {
        console.log("Selected = " + openDialog.selectedFile)
        board.openSpace(openDialog.selectedFile)
    }
}


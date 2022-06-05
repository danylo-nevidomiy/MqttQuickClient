import QtQuick 2.0
//import QtQuick.Controls
import QtQuick.Dialogs

FileDialog {
    id: openDialog
    fileMode: FileDialog.OpenFile
    title: "Please choose a file";
    nameFilters: ["QML Files (*.qml)"];
    //        selectedFile: true
    //        selectExisting: true
    onAccepted: {
        console.log("Selected = " + openDialog.selectedFile)
        multiview.push(openDialog.selectedFile)
    }
}


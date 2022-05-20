import QtQuick 2.0
import QtQuick.Controls
import QtQuick.Layouts 1.1


Item {
    property color color: rect.color

    Rectangle{
        id:rect
        anchors.fill: parent
        color:"green"
//        width:1024
//        height:600
        //        ScrollView {
        //            id: scrollView
        //            anchors.fill: parent
        //                                                    width:800
        //                                                    height:600

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
                            SwitchItem{name:"SwitchName1"}
            }

            Rectangle {
                color: "blue"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 1
                 SwitchItem{name:"SwitchName2"}
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
//        GridLayout {
//            //                                anchors.horizontalCenter: parent.horizontalCenter
//            //                                anchors.verticalCenter: parent.verticalCenter
//            //                width:parent.width
//            //                height:parent.height
//            id:grid
//            anchors.fill: parent
//            rows: 2
//            columns: 3

//            //                spacing: 5

//            Rectangle{
//                //                                        width:450
//                //                                        height:300
//                color: "red"
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//                Layout.columnSpan: 1
//                Layout.rowSpan: 1
//                Layout.row: 0
//                Layout.column: 0
//                Layout.preferredWidth: 1   // 4 of 5 cols
//                Layout.preferredHeight: 1  // 2 of 5 rows
//                                    Layout.maximumWidth:400
//                                    Layout.maximumHeight:300
//                //                    SwitchItem{name:"SwitchName1"}}
//                Rectangle{
//                    //                    width:400
//                    //                    height:350
//                    color: "blue"
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    Layout.columnSpan: 1
//                    Layout.rowSpan: 1
//                    Layout.row: 1
//                    Layout.column: 0
//                    Layout.preferredWidth: 1   // 4 of 5 cols
//                            Layout.preferredHeight: 1  // 2 of 5 rows
//                    //                    Layout.maximumWidth:400
//                    //                    Layout.maximumHeight:300
//                    //                    Input{}
//                    //                    width:400
//                    //                    height:300
//                }
//                Rectangle{
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    Layout.columnSpan: 1
//                    Layout.rowSpan: 1
//                    Layout.row: 0
//                    Layout.column: 1
//                    //                    Value{name:"failed"}
//                    //                    width:400
//                    //                    height:300
//                }
//                Rectangle{
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    Layout.columnSpan: 1
//                    Layout.rowSpan: 1
//                    Layout.row: 1
//                    Layout.column: 2
//                    //                    Chart{}
//                    //                    width:400
//                    //                    height:300
//                }
//                //                Rectangle{
//                //                    width:400
//                //                    height:300
//                //                    SwitchItem{}}


//            }

        }
        //    }
    }
//}


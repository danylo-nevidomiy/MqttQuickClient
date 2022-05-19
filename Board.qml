import QtQuick 2.12
import QtQuick.Window 2.12
import QtCharts 2.3
import QtQuick.Controls 2.4

Window {
    visible: true
    width: 1200
    height: 800
    title: "Charts"

    ListModel {
        id: modelId
    }

    Rectangle {
        id: rectId
        color: "pink"
        anchors.fill: parent

        GridView {
            id: mGridViewId
            anchors.fill: parent
            cellWidth: 300; cellHeight: 300
            model: modelId
            delegate: Rectangle {
                width: mGridViewId.cellWidth;
                height: mGridViewId.cellHeight
                color: mColor

                ChartView {
                    width: parent.width;
                    height: parent.height

                    LineSeries {
                        name: "LineSeries"
                        XYPoint { x: 0; y: 0 }
                        XYPoint { x: 1.1; y: 2.1 }
                        XYPoint { x: 1.9; y: 3.3 }
                    }

                }
            }
        }
    }

    Column {
        anchors.centerIn: parent
        Row {
            Button {
                text: "add chart"

                onClicked: {
                   modelId.append({'mColor': 'blue'})
                }
            }


            Button {
                text: "remove chart"

                onClicked: {
                    modelId.remove(0)
                }
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "add line series"

            onClicked: {
                var chart = modelId.get(0)
                chart.removeAllSeries();
            }
        }

    }

}

import QtQuick 2.0
import QtCharts 6.2

Item {
    anchors.fill: parent
    Rectangle{
        width:400
        height: 300
    ChartView {
        anchors.fill: parent
        LineSeries {
            name: "LineSeries"
            XYPoint {
                x: 0
                y: 2
            }

            XYPoint {
                x: 1
                y: 1.2
            }

            XYPoint {
                x: 2
                y: 3.3
            }

            XYPoint {
                x: 5
                y: 2.1
            }
        }
    }
    }

}

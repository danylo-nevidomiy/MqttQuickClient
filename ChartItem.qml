import QtQuick 2.0
import MqttClient 1.0
import QtQuick.Controls 6.2
import QtCharts 6.2
import QtQuick.Layouts 1.1

Rectangle {
    id:chart
    property string name;
    property string topic;
    property int column: 0
    property int row: 0
    property int maxX: 20
    property int minX: 0
    property int maxY: 20
    property int minY: 0
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    Layout.rowSpan: 1
    Layout.row: chart.row
    Layout.column: chart.column

    ChartItem{
        id:initem
                anchors.fill: parent
        onNameChanged: name.text = initem.name
        onMessageChanged: {
            addPoint()
        }

        Rectangle{
            anchors.fill: parent

            ChartView {
                id: line
                property int count: 0
                x: 0
                y: 0
                anchors.fill: parent

                ValueAxis {
                    id: axisX
                    min: 0
                    max: 20
                }
                ValueAxis {
                    id: axisY
                    min: 0
                    max: 20
                }
                LineSeries {
                    id: series
                    axisX: axisX
                    axisY: axisY
                    name: "LineSeries"
                }

            }

        }
        function addPoint(){
            console.log("add pointcat");


                if(series.count>axisX.max-axisX.min){
                    series.remove(0)
                }
                for(var i=0;i<series.count;i++)
                {
                    var tmp = series.at(i)
                    series.replace(tmp.x, tmp.y, tmp.x-1, tmp.y);
                }
                series.append(axisX.max, Number(m_message))
        }
        Component.onCompleted: {
            initem.setTopic(chart.topic)
            axisX.max = maxX
            axisX.min = minX
            axisY.max = maxY
            axisY.min = minY

        }
    }

}

import QtQuick 2.0
import MqttClient 1.0
import QtCharts 6.2

Item {
    //    anchors.fill: parent
    id:chart
    width:400
    height: 300
    property string name: "label.name"
    property string topic: "topic"

    ChartItem{
        id:initem
        //        anchors.fill: parent
        onNameChanged: name.text = initem.name
        onMessageChanged: {
            addPoint(line.count, initem.m_message)
        }
        //        ListModel {
        //               id: modelId
        //           }
        Rectangle{
            width:400
            height: 300


            ChartView {
                id: line
                property int count: 0
                x: 0
                y: 0
                width: 400
                height: 300
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
//                    XYPoint {
//                        x: 0
//                        y: 2
//                    }

//                    XYPoint {
//                        x: 1
//                        y: 1.2
//                    }

//                    XYPoint {
//                        x: 2
//                        y: 3.3
//                    }

                    //                                XYPoint {
                    //                                    x: 5
                    //                                    y: 2.1
                    //                                }
                }

            }
            //            GridView {
            //                       id: mGridViewId
            //                       anchors.fill: parent
            //                       cellWidth: 400; cellHeight: 300
            //                       model: modelId
            //                       delegate: Rectangle {
            //                           width: mGridViewId.cellWidth;
            //                           height: mGridViewId.cellHeight
            //                           color: "green"

            //                           ChartView {
            //                               width: parent.width;
            //                               height: parent.height

            //                               LineSeries {
            //                                   name: "LineSeries"
            //                                   XYPoint { x: 0; y: 0 }
            //                                   XYPoint { x: 1.1; y: 2.1 }
            //                                   XYPoint { x: 1.9; y: 3.3 }
            //                               }

            //                           }
            //                       }
            //        }
        }
        function addPoint(x, y){
//            series.axisX.max=5;
//            series.axisX.min=-1;
//            series.axisY.max=5;
//            series.axisY.min=-1;

//            var newSeries = ChartView.createSeries(ChartView.SeriesTypeLine, series.name + line.count)


            let arr = [];
                        for(var i=0;i<line.count;i++)
                        {
                            arr[arr.length] = line.series(0).at(i).ry;
//                            var yy = series.at(i).ry;
//                            newSeries.append(xx, yy);
            //                console.log("i = " + i);
            //                console.log("x = " + series.at(i).rx + ", y = " + series.at(i).ry);
            //                newSeries.append(series.at(i).rx, series.at(i).ry);
                        }
                        var name = line.series(0).name;
                        line.removeAllSeries();

            var y1 = Number(y)

                        var newSeries = line.createSeries(ChartView.SeriesTypeLine, name + line.count, axisX, axisY);
                        var xx = 20;
                        for(var j=0;i<arr.length;i++, x++)
                        {
                            newSeries.append(xx, arr[j]);
                        }

                        newSeries.append(20, y1);

//                        line.createSeries(newSeries, name);
//            series.append(series.axisX.max, y1);
            line.count++;
        }
        Component.onCompleted: {
            initem.setTopic(chart.topic)
        }
    }

}

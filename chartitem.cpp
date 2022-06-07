#include "chartitem.h"

ChartItem::ChartItem()
{
    //    connect()
}

void ChartItem::addValue(QLineSeries *lineSeries)
{
    if(lineSeries->count()!=0){
    lineSeries->remove(0);
    }

    for(int i=0;i<lineSeries->count();i++){
        auto tmp = lineSeries->at(i);
        lineSeries->replace(tmp.x(), tmp.y(), tmp.x()-1,tmp.y());
    }
    lineSeries->append(lineSeries->count()+minValueX, m_message.toDouble());
    lineSeries->append(1,1);
    lineSeries->append(2,2);
    lineSeries->setName("NewLine");

//    qDebug() << "v = " << lineSeries->isVisible();
//    if(!data.isEmpty()){
//    data.pop_front();
//    }
//    QPair<qreal, qreal> tmp;
//    for(int i=0;i<data.length();i++){
//       tmp = data.at(i);
//       tmp.first--;
//       data.replace(i, tmp);
//    }
//    qDebug() << "x = " << minValueX+data.length() << " y = " << m_message;
//    data.push_back(qMakePair(minValueX+data.length(), m_message.toDouble()));
//    lineSeries->clear();

////    for(int i=lineSeries->count();i>0;i--){
////        lineSeries->remove(lineSeries->at(i).x(), lineSeries->at(i).y());
////    }
//    for (auto i : data) {
//        lineSeries->append(i.first, i.second);
//        qDebug() << "i.x = " << i.first << " i.y = " << i.second;
//    }
//    lineSeries;
}

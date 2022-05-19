#include "chartregisterer.h"

ChartRegisterer::ChartRegisterer(QQmlApplicationEngine &engine)
{
    this->appEngine = &engine;
}

//void ChartRegisterer::RegisterChart(ChartItem &ch)
//{
//    appEngine->rootContext()->setContextProperty("chartitem",&ch);
//}

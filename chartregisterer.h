#ifndef CHARTREGISTERER_H
#define CHARTREGISTERER_H

#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <chartitem.h>

class ChartRegisterer
{
public:
    ChartRegisterer(QQmlApplicationEngine &engine);

public slots:
//    void RegisterChart(ChartItem &ch);
private:
    QQmlApplicationEngine *appEngine;
};

#endif // CHARTREGISTERER_H

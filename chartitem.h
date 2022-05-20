#ifndef CHARTITEM_H
#define CHARTITEM_H

#include <QPair>

#include "mqttitem.h"
#include "chartregisterer.h"

class ChartItem : public MqttItem
{
    Q_OBJECT
    Q_PROPERTY(QVariantList arr READ getarr WRITE setarr)
    QML_ELEMENT
public:
    ChartItem();
    const QVariantList & getarr() const { return m_arr; }
        void setarr(const QVariantList & v) { m_arr = v; }
        Q_INVOKABLE void AddValue(double y);
private:
       QVariantList  m_arr;
       int maxValueX = 20;
       int maxValueY = 20;
       int minValueX = 0;
       int minValueY = 0;

};

#endif // CHARTITEM_H

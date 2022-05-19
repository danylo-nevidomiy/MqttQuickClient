#ifndef CHARTITEM_H
#define CHARTITEM_H

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
private:
       QVariantList  m_arr;
};

#endif // CHARTITEM_H

#ifndef BOARDITEM_H
#define BOARDITEM_H

#include <QQuickItem>
#include <QtMqtt/QMqttClient>

//#include "indicatoritem.h"

class IndicatorItem;

class BoardItem : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QMqttClient* m_connection READ getConnection NOTIFY connectionChanged)
    Q_PROPERTY(IndicatorItem* indicator READ indicator WRITE setIndicator NOTIFY indicatorChanged)
    Q_MOC_INCLUDE("indicatoritem.h")
    QML_ELEMENT
public:
    BoardItem(QQuickItem *parent = 0);
    QMqttClient *getConnection();

//    void setHostname(const QString& hostname);
//    void setPort(quint16 port);
//    void connectToHost();
//    QMqttSubscription *subscribe(const QMqttTopicFilter &topic, quint8 qos = 0);

    IndicatorItem *indicator() const;
    void setIndicator(IndicatorItem *newIndicator);

Q_SIGNALS:
    void connectionChanged();
    void indicatorChanged();

private:
    QMqttClient *m_connection;
    IndicatorItem *m_indicator;


signals:

};

#endif // BOARDITEM_H

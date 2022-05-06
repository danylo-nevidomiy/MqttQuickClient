#include "boarditem.h"

BoardItem::BoardItem(QQuickItem *parent)
    : QQuickItem(parent), m_indicator(nullptr)
{

}

QMqttClient *BoardItem::getConnection()
{
    return m_connection;
}

IndicatorItem *BoardItem::indicator() const
{
    return m_indicator;
}

void BoardItem::setIndicator(IndicatorItem *newIndicator)
{
    m_indicator = newIndicator;
}

//void ConnectionItem::setHostname(const QString &hostname)
//{
//    connection->setHostname(hostname);
//}

//void ConnectionItem::setPort(quint16 port)
//{
//    connection->setPort(port);
//}

//void ConnectionItem::connectToHost()
//{
//    connection->connectToHost();
//}

//QMqttSubscription *ConnectionItem::subscribe(const QMqttTopicFilter &topic, quint8 qos = 0)
//{

//}

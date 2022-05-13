#include "mqttitem.h"

//#include <QObject>

MqttItem::MqttItem()
{
    m_client = new QMqttClient();
    m_client->setHostname("localhost");
    m_client->setPort(1883);
    m_client->connectToHost();
    connect(m_client, &QMqttClient::messageReceived, this, [this](const QByteArray &message, const QMqttTopicName &topic) {
        const QString content = QDateTime::currentDateTime().toString()
                + QLatin1String(" Received Topic: ")
                + topic.name()
                + QLatin1String(" Message: ")
                + message
                + QLatin1Char('\n');
        qDebug() << content;
            if(QString::compare(topic.name(), getTopic()) == 0)
            {
                m_message = message;
                emit messageChanged();
            }
    });
//    connect(m_client, &QMqttClient::messageReceived, this, &MqttItem::messageReceivedSlot);
}

void MqttItem::subscribeTopic(const QMqttTopicFilter &topic)
{
    m_client->subscribe(topic);
}

void MqttItem::unsubscribeTopic(const QMqttTopicFilter &topic)
{
    m_client->unsubscribe(topic);
}

qint32 MqttItem::publishInTopic(const QString &topic, const QString &message)
{
    m_client->publish(topic, message.toUtf8());
}

const QString &MqttItem::getTopic() const
{
    return m_topic;
}

void MqttItem::setTopic(const QString &newTopic)
{
    if (m_topic == newTopic)
        return;
    changeTopic(newTopic);
    m_topic = newTopic;
    emit topicChanged();
}

void MqttItem::changeTopic(const QString &newTopic)
{
    unsubscribeTopic(m_topic);
    subscribeTopic(newTopic);
}

const QString &MqttItem::getName() const
{
    return m_name;
}

void MqttItem::setName(const QString &newName)
{
    if (m_name == newName)
        return;
    m_name = newName;
    emit nameChanged();
}

const QString &MqttItem::getMessage() const
{
    return m_message;
}

void MqttItem::sendMessage(const QString &newMessage)
{
//    client = new QMqttClient();
//    client->setHostname("localhost");
//    client->setPort(1883);
    m_client->publish(m_topic, newMessage.toUtf8());
    m_message = newMessage;
    emit messageChanged();
}

QMqttClient *MqttItem::getClient() const
{
    return m_client;
}

void MqttItem::setClient(QMqttClient *newClient)
{
    if (m_client == newClient)
        return;
    m_client = newClient;
    emit clientChanged();
}

const QString &MqttItem::getOffValue() const
{
    return m_offValue;
}

void MqttItem::sendOffValue(const QString &newOffValue)
{
    sendMessage(newOffValue);
}

void MqttItem::setOffValue(const QString &newOffValue)
{
    if(m_offValue == newOffValue)
        return;
    m_offValue = newOffValue;
    emit offValueChanged();
}

const QString &MqttItem::getOnValue() const
{
    return m_onValue;
}

void MqttItem::sendOnValue(const QString &OnValue)
{
    sendMessage(OnValue);
}

void MqttItem::setOnValue(const QString &newOnValue)
{
    if(m_onValue == newOnValue)
        return;
    m_onValue = newOnValue;
    emit onValueChanged();
}

void MqttItem::messageReceivedSlot(const QByteArray &message, const QMqttTopicName &topic)
{
    if(QString::compare(topic.name(), getTopic()) == 0)
                {
                    m_message = message;
                    emit messageChanged();
                }
}

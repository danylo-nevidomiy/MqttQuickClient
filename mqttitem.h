#ifndef MQTTITEM_H
#define MQTTITEM_H

#include <QtMqtt/QMqttClient>
#include <QQuickItem>


class MqttItem : public QQuickItem
{
    Q_OBJECT
    //    Q_PROPERTY(QString subscribeTopic WRITE subscribeTopic)
    //![0]
    //    Q_PROPERTY(QString unsubscribeTopic WRITE subscribeTopic)
    Q_PROPERTY(QString m_topic READ getTopic WRITE setTopic NOTIFY topicChanged)
    Q_PROPERTY(QString m_name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString m_message READ getMessage WRITE sendMessage NOTIFY messageChanged)
    Q_PROPERTY(QMqttClient *m_client READ getClient WRITE setClient NOTIFY clientChanged)
    Q_PROPERTY(QString m_offValue READ getOffValue WRITE setOffValue NOTIFY offValueChanged)
    Q_PROPERTY(QString m_onValue READ getOnValue WRITE setOnValue NOTIFY onValueChanged)
    //    Q_MOC_INCLUDE("mqttitem.h")
    QML_ELEMENT
public:
    MqttItem();
    Q_INVOKABLE void subscribeTopic(const QMqttTopicFilter &topic);
    void unsubscribeTopic(const QMqttTopicFilter &topic);
    Q_INVOKABLE qint32 publishInTopic(const QString &topic, const QString &message);
    const QString &getTopic() const;
    Q_INVOKABLE void setTopic(const QString &newTopic);
    void changeTopic(const QString &newTopic);
    const QString &getName() const;
    Q_INVOKABLE void setName(const QString &newName);

    Q_INVOKABLE const QString &getMessage() const;
    Q_INVOKABLE void sendMessage(const QString &newMessage);

    QMqttClient *getClient() const;
    Q_INVOKABLE void setClient(QMqttClient *newClient);

    const QString &getOffValue() const;
    Q_INVOKABLE void sendOffValue(const QString &newOffValue);
    Q_INVOKABLE void setOffValue(const QString &newOffValue);

    const QString &getOnValue() const;
    Q_INVOKABLE void sendOnValue(const QString &OnValue);
    Q_INVOKABLE void setOnValue(const QString &newOnValue);

    Q_INVOKABLE void emitReceivedMessage();


signals:
    void topicChanged();

    void nameChanged();

    void messageChanged();

    void clientChanged();

    void offValueChanged();

    void onValueChanged();

public slots:
void messageReceivedSlot(const QByteArray &message, const QMqttTopicName &topic);
protected:
    QMqttClient *m_client;
    QString m_topic;
    QString m_name;
    QString m_message;
    QString m_offValue = "0";
    QString m_onValue = "1";




};

#endif // MQTTITEM_H

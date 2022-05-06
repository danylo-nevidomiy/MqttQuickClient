#ifndef BASEITEM_H
#define BASEITEM_H

#include <QQuickItem>
#include <QtMqtt/QMqttClient>

class BaseItem : public QQuickItem
{
    Q_OBJECT
public:
    BaseItem();
    void subscribeTopic(const QMqttTopicFilter &topic);

private:


signals:

};

#endif // BASEITEM_H

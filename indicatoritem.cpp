#include <QPainter>

#include "indicatoritem.h"

IndicatorItem::IndicatorItem(QQuickItem *parent)
    : QQuickPaintedItem(parent)
{
    Q_UNUSED(parent)
    arrow.load("/home/daniil/Repositories/qtmqtt/examples/mqtt/mqtt_sub/arrow-upper-right.png");
    Q_ASSERT(!arrow.isNull());
    clock.load("/home/daniil/Repositories/qtmqtt/examples/mqtt/mqtt_sub/pngegg.png");
    Q_ASSERT(!clock.isNull());
}

void IndicatorItem::paint(QPainter *painter)
{
//    Q_UNUSED(event);
//    QPainter painter(this); // Create object of QPainter
//    QRect target(50,0,clock.height(), clock.width());
//    painter->drawImage(target, clock);
//    painter->rotate(60);
//    QTransform trans;
//    trans.translate(this->width()/2, this->height()/2);
//    trans.rotate(angle);
//    trans.translate(0,0);
//    painter->setTransform(trans);
//    painter->drawImage(QPoint(0,0), arrow.scaledToHeight(100));
//    painter->end();


//    QColor m_color = Qt::red;
    QPen pen(m_color, 2);
    painter->setPen(pen);
    painter->setRenderHints(QPainter::Antialiasing, true);
    painter->drawPie(boundingRect().adjusted(1, 1, -1, -1), 90 * 16, 290 * 16);
}

const QColor &IndicatorItem::color() const
{
    return m_color;
}

void IndicatorItem::setColor(const QColor &newColor)
{
    m_color = newColor;
}

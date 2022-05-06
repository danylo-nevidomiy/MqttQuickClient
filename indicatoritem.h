#ifndef INDICATORITEM_H
#define INDICATORITEM_H

#include <QObject>
#include <QQuickPaintedItem>
#include <QImage>
#include <QColor>

class IndicatorItem : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor)
    QML_ELEMENT
public:
    IndicatorItem(QQuickItem *parent = 0);
    void paint(QPainter *painter);
    const QColor &color() const;
    void setColor(const QColor &newColor);

private:
    QImage arrow;
    QImage clock;
    const int radius = 150;
    const int originX = 100;
    const int originY = 50;
    double angle = 180;
    QColor m_color;


signals:

};

#endif // INDICATORITEM_H

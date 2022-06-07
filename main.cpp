#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQuick/QQuickView>
#include <QQmlContext>

#include "boarditem.h"
#include "chartitem.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QApplication app(argc, argv);

    app.setOrganizationName("pstgu");
    app.setOrganizationDomain("pstgu.ru");

//    qmlRegisterType<BoardItem>("BoardItem",1,0,"BoardItem");
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/Window.qml"));
//    ChartItem ch;
//      engine.rootContext()->setContextProperty("chartitem",&ch);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

//    QQuickView view;
//    view.setResizeMode(QQuickView::SizeRootObjectToView);
//    view.setSource(QUrl("qrc:/Board.qml"));
//    view.show();

    return app.exec();
}

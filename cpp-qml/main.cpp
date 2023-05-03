#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>

#include "MyObject.h"

int main(int argc, char* argv[])
{
#if defined(Q_OS_WIN)
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

	QGuiApplication app(argc, argv);

	QQmlApplicationEngine engine;
	// 全局对象，上下文对象
	QQmlContext* context = engine.rootContext();
	// 获取屏幕宽度和高度
	//QScreen* screen = QGuiApplication::primaryScreen();
	//QRect screenRect = screen->virtualGeometry();
	//context->setContextProperty("SCREEN_WIDTH", screenRect.width());

	// 设置全局属性, 作用于全局 重名会被隐藏
	context->setContextProperty("SCREEN_WIDTH", 600);
	context->setContextProperty("MyObject", MyObject::getObj());

	qmlRegisterType<MyObject>("MyObject", 1, 0, "MyObject");

	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}

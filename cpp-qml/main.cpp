#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>
#include <QObject>

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

	// c++端绑定信号和槽函数
	qDebug() << "first objectName:" << engine.rootObjects().first()->objectName();
	// engine加载完毕之后
	auto objWnd = engine.rootObjects().first();
	auto objBtn = engine.rootObjects().first()->findChild<QObject*>("qmlEmitSignalBtn");
	qDebug() << objBtn->objectName();
	QObject::connect(objWnd, SIGNAL(qmlSig(int, QString)), MyObject::getObj(), SLOT(cppSlot(int, QString)));

	QVariant res;
	QVariant arg1 = 123;
	QVariant arg2 = "zhangshang";
	QMetaObject::invokeMethod(objWnd, "qmlFunc", Q_RETURN_ARG(QVariant, res), Q_ARG(QVariant, arg1), Q_ARG(QVariant, arg2));
	qDebug() << "qmlFunc res = " << res;

	return app.exec();
}

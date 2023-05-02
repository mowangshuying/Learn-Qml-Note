#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>

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

	// 设置全局属性
	context->setContextProperty("SCREEN_WIDTH", 600);

	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}

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
	// ȫ�ֶ��������Ķ���
	QQmlContext* context = engine.rootContext();
	// ��ȡ��Ļ��Ⱥ͸߶�
	//QScreen* screen = QGuiApplication::primaryScreen();
	//QRect screenRect = screen->virtualGeometry();
	//context->setContextProperty("SCREEN_WIDTH", screenRect.width());

	// ����ȫ������, ������ȫ�� �����ᱻ����
	context->setContextProperty("SCREEN_WIDTH", 600);
	context->setContextProperty("MyObject", MyObject::getObj());

	qmlRegisterType<MyObject>("MyObject", 1, 0, "MyObject");

	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}

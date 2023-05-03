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

	// c++�˰��źźͲۺ���
	qDebug() << "first objectName:" << engine.rootObjects().first()->objectName();
	// engine�������֮��
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

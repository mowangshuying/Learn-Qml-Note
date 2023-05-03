#pragma once

#include <QString>
#include <QObject>
#include <QDebug>

class MyObject : public QObject
{
	Q_OBJECT
public:
	MyObject(QObject* parent = nullptr);

	static MyObject* getObj()
	{
		static MyObject* obj = new MyObject();
		return obj;
	}

	void setMyInt(int myInt);

	int getMyInt();

	void setMyStr(QString myStr);

	QString getMyStr();

	Q_INVOKABLE void myFunc();

signals:
	void myIntChanged(int myInt);
	void myStrChanged(QString myStr);
	void cppSig(int i, QString str);
public:
	Q_PROPERTY(int myInt READ getMyInt WRITE setMyInt NOTIFY myIntChanged);
	Q_PROPERTY(QString myStr READ getMyStr WRITE setMyStr NOTIFY myStrChanged);

public slots:
	void cppSlot(int i, QString str);
private:
	QString m_myStr;
	int m_myInt;
};


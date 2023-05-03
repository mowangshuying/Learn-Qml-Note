#pragma once

#include <QString>
#include <QObject>

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

signals:
	void myIntChanged(int myInt);
	void myStrChanged(QString myStr);

public:
	Q_PROPERTY(int myInt READ getMyInt WRITE setMyInt NOTIFY myIntChanged);
	Q_PROPERTY(QString myStr READ getMyStr WRITE setMyStr NOTIFY myStrChanged);

public slots:
	void cppSlot();
private:
	QString m_myStr;
	int m_myInt;
};


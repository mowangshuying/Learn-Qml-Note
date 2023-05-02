#pragma once

#include <qobject.h>

class MyObject : public QObject
{
	Q_OBJECT
public:
	MyObject(QObject* parent = nullptr);

	void setMyInt(int myInt);

	int getMyInt();

	void setMyStr(QString myStr);

	QString getMyStr();
public slots:
	void cppSlot();
private:
	QString m_myStr;
	int m_myInt;
};


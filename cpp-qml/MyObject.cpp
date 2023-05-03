#include "MyObject.h"

MyObject::MyObject(QObject* parent /*= nullptr*/) : QObject(parent), m_myInt(0), m_myStr("")
{
}

void MyObject::setMyInt(int myInt)
{
	if (myInt == m_myInt)
	{
		return;
	}

	emit myIntChanged(myInt);
	m_myInt = myInt;
}

int MyObject::getMyInt()
{
	return m_myInt;
}

void MyObject::setMyStr(QString myStr)
{
	if (myStr == m_myStr)
	{
		return;
	}
	emit myStrChanged(myStr);
	m_myStr = myStr;
}

QString MyObject::getMyStr()
{
	return m_myStr;
}

void MyObject::myFunc()
{
	qDebug() << __FUNCTION__;
}

void MyObject::cppSlot()
{

}

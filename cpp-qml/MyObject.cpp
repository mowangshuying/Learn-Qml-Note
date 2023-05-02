#include "MyObject.h"

MyObject::MyObject(QObject* parent /*= nullptr*/) : QObject(parent), m_myInt(0), m_myStr("")
{
}

void MyObject::setMyInt(int myInt)
{
	m_myInt = myInt;
}

int MyObject::getMyInt()
{
	return m_myInt;
}

void MyObject::setMyStr(QString myStr)
{
	m_myStr = myStr;
}

QString MyObject::getMyStr()
{
	return m_myStr;
}

void MyObject::cppSlot()
{

}

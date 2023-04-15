import QtQuick 2.9
import QtQuick.Window 2.2


Window 
{
    visible: true
    width: 640
    height: 480
    title: qsTr("item")

    Item 
	{
		Rectangle 
		{
			//opacity: 0.5
			color: "red"
			x:50; y:50; width:200;height:200;
			Rectangle 
			{
				color: "yellow"
				x:50; y:50; width:100;height:100;
			}
		}
	}

}
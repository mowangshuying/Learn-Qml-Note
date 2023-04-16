import QtQuick 2.9
import QtQuick.Window 2.2

Window 
{
    visible: true
    width: 640
    height: 480
    title: qsTr("keys")


    Rectangle 
    {
        focus:true;
        color:'yellow';
        x:50;y:50;width:100;height:30;
        Keys.onPressed: 
        {
            if(event.key == Qt.Key_A)
            {
                console.log('key a was pressed!');
                // 防止事件向上层传播
                event.accepted = true;
            }
            else
            {
                console.log("other key was pressed!");
                event.accepted = false;
            }
            
        }
    }
}

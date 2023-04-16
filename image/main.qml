import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ͼƬ")

    Image {
        x:100;y:100;
        width:120;height:120;
        fillMode:Image.Tile;
        source: "http://www.baidu.com/img/baidu_sylogo1.gif";
        onStatusChanged: {
            if (image.status == Image.Ready)
                console.log('Loaded')
            else if (image.status == Image.Loading)
                console.log('Loading')
        }
    }
}

import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("model-view")

    Item {
        anchors.fill: parent;
        ListModel {
            id: listModel;
            ListElement { type:"Dog"; age:8}
            ListElement { type:"Cat"; age:5}
        }    

        Component {
            id: listDelegate
            Text { text: type + ',' + age }
        }

        ListView {
            anchors.fill: parent;
            model: listModel;
            delegate: listDelegate;
        }
    }
    
}

import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.1

Rectangle {
    property int iconSize: 32
    width:parent.width

    GridLayout{
        id:townGrid
        width:parent.width
        columns:3
        anchors.topMargin: 16 
        
        Image {
            width: iconSize; height:iconSize
            source: "../res/gold-coin.png"
            fillMode: Image.PreserveAspectFit
            Layout.preferredWidth:iconSize;
            Layout.preferredHeight:iconSize;
            Layout.fillWidth: false
            Layout.fillHeight: false
        }
        Text{text: "Gold"; Layout.alignment: Qt.AlignLeft;  }
        Text{text: "101"; Layout.alignment: Qt.AlignLeft; Layout.fillWidth:true }
        Image {
            width: iconSize; height:iconSize
            source: "../res/gold-coin.png"
            fillMode: Image.PreserveAspectFit
            Layout.preferredWidth:iconSize;
            Layout.preferredHeight:iconSize;
            Layout.fillWidth: false
            Layout.fillHeight: false
        }
        Text{text: "Wood"; Layout.alignment: Qt.AlignLeft;  }
        Text{text: "101"; Layout.alignment: Qt.AlignLeft; Layout.fillWidth:true }
        Image {
            width: iconSize; height:iconSize
            source: "../res/pop.png"
            fillMode: Image.PreserveAspectFit
            Layout.preferredWidth:iconSize;
            Layout.preferredHeight:iconSize;
            Layout.fillWidth: false
            Layout.fillHeight: false
        }
        Text{text: "Population   "; Layout.alignment: Qt.AlignLeft;  }
        Text{text: "4/12"; Layout.alignment: Qt.AlignLeft; Layout.fillWidth:true }
    }
}


import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.1
import "view"

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")
    
    Material.theme: Material.Light
    Material.accent: '#41cd52'
    Material.primary: '#41cd52'
    
    header: ToolBar {
        Material.foreground: "white"

        RowLayout {
            spacing: 20
            anchors.fill: parent

            Label {
                id: p1Label
                text: qsTr("Player 1")
                font.pixelSize: 20
                horizontalAlignment: Qt.AlignLeft
                verticalAlignment: Qt.AlignVCenter
            }

            Label {
                id: vsLabel
                text: qsTr("VS")
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            
           
           
            Label {
                id: p2Label
                text: qsTr("Player 2")
                font.pixelSize: 20
                horizontalAlignment: Qt.AlignRight
                verticalAlignment: Qt.AlignVCenter
                
            }

        }
    }

    TabBar {
        id: bar
        width: parent.width
        
        TabButton {
            text: qsTr("Town")
        }
        TabButton {
            text: qsTr("Units")
        }
        TabButton {
            text: qsTr("Buildings")
        }
        TabButton {
            text: qsTr("Upgrade")
        }
    }

    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        anchors.top: bar.bottom
        anchors.topMargin: 8
        
        Item {
            id: townTab
            TownView{}
        }
        Item {
            id: unitTab
            UnitView{}
        }
        Item {
            id: buildingTab
            BuildingView{}    
        }
        Item {
            id: upgradeTab
            UpgradeView{}
        }
        
    }


}
import QtQuick 2.11

Item {
    id: mainDashboard
    width: bck.width
    height: bck.height

    Image {
        id: bck

        anchors.centerIn: mainDashboard

        source: "images/background_empty.png"
    }

    StatusBar {
        anchors.left: mainDashboard.left
        anchors.right: mainDashboard.right
        anchors.leftMargin: 150
        anchors.rightMargin: 150
        height: 20
        anchors.bottom: mainDashboard.bottom
        anchors.bottomMargin: 25
    }
}

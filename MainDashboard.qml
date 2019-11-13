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

    // TODO: implement the StatusBar component
}

import QtQuick 2.11

Item {
    id: mainDashboard
    width: bck.width
    height: bck.height

    Image {
        id: bck

        anchors.centerIn: mainDashboard

        source: "images/background_empty.png"

        Image {
            id: contagiri_back
            source: "images/contagiri_back.png"
            anchors.centerIn: parent

            Image {
                id: contagiri_top
                source: "images/contagiri_top.png"
                anchors.centerIn: parent

                Image {
                    id: ghiera_numeri
                    source: "images/ghiera+numeri.png"
                    anchors.centerIn: parent

                    Image {
                        id: centrale
                        source: "images/centrale.png"
                        anchors.centerIn: parent

                        Cruise {
                            id: cruise
                            anchors.centerIn: parent
                            speed: control_unit.speed
                            battery: control_unit.battery / 100.0
                        }

                    }
                }
            }
        }

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

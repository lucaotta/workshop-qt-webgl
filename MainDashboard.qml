import QtQuick 2.11

Item {
    id: mainDashboard

    width: dashBackground.width
    height: dashBackground.height

    Image {
        id: dashBackground
        source: "images/background_empty.png"
        anchors.centerIn: parent

        Image {
            id: clock

            anchors.right: contagiri_back.left
            anchors.rightMargin: 80
            anchors.verticalCenter: contagiri_back.verticalCenter

            source: "images/clock.png"
        }

        Image {
            id: contagiri_back
            source: "images/contagiri_back.png"
            anchors.centerIn: parent

            Pie {
                id: speed_pie
                anchors.fill: parent
                startAngle: 120
                sweepAngle: control_unit.speed
                color: "blue"
            }

            Pie {
                id: energy_pie
                anchors.fill: parent
                startAngle: 0
                sweepAngle: -control_unit.energy
                color: "yellow"
            }

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

                        Prindle {
                            anchors.top: cruise.bottom
                            anchors.topMargin: 40
                            anchors.horizontalCenter: centrale.horizontalCenter
                        }
                    }
                }
            }
        }

        TripInfo {
            id: tripInfo

            anchors.left: contagiri_back.right
            anchors.leftMargin: 80
            anchors.verticalCenter: contagiri_back.verticalCenter
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

    focus: true
    Keys.onPressed: {
        if (event.key === Qt.Key_P) {
            control_unit.gear = 1;
        } else if (event.key === Qt.Key_R) {
            control_unit.gear = 2;
        } else if (event.key === Qt.Key_N) {
            control_unit.gear = 3;
        } else if (event.key === Qt.Key_D) {
            control_unit.gear = 4;
        }
    }
}

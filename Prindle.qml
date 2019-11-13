import QtQuick 2.11

Rectangle {
    id: gears

    width: 80
    height: 30

    color: "transparent"

    Row {
        spacing: 10

        Image {
            id: img_p
            source: "images/P.png"
        }
        Image {
            id: img_r
            source: "images/R.png"
        }
        Image {
            id: img_n
            source: "images/N.png"
        }
        Image {
            id: img_d
            source: "images/D.png"
        }
    }

    states: [
        State {
            name: "parking"
            when: control_unit.gear === 1
            PropertyChanges {
                target: img_p
                scale: 1.5
            }
        },
        State {
            name: "reverse"
            when: control_unit.gear === 2
            PropertyChanges {
                target: img_r
                scale: 1.5
            }
        },
        State {
            name: "neutral"
            when: control_unit.gear === 3
            PropertyChanges {
                target: img_n
                scale: 1.5

            }
        },
        State {
            name: "drive"
            when: control_unit.gear === 4
            PropertyChanges {
                target: img_d
                scale: 1.5
            }
        }
    ]
}

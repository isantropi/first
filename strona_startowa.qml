import QtQuick
import QtQuick.Controls

Item {
    id: root
    width: 1080
    height: 1080

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1080
        height: 1080
        color: "#ffffff"

        Text {
            id: _text
            x: 53
            y: 130
            width: 974
            height: 187
            text: qsTr("REAL-TIME CHESS")
            font.pixelSize: 90
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.capitalization: Font.AllUppercase
            textFormat: Text.AutoText
            font.weight: Font.Black
        }

        Item {
            id: start_new_game
            x: 240
            y: 365
            width: 600
            height: 200

            Rectangle {
                id: rectangle
                x: 0
                y: 0
                width: 600
                height: 200
                color: "#ffffff"
                border.width: 10

                Text {
                    id: _text1
                    x: 9
                    y: 61
                    width: 583
                    height: 79
                    text: qsTr("START NEW GAME")
                    font.pixelSize: 70
                    horizontalAlignment: Text.AlignHCenter
                    font.styleName: "Condensed Bold"
                }
            }
        }

        Item {
            id: join_game
            x: 240
            y: 667
            width: 600
            height: 200
            Rectangle {
                id: rectangle1
                x: 0
                y: 0
                width: 600
                height: 200
                color: "#ffffff"
                border.width: 10

                Text {
                    id: _text2
                    x: 9
                    y: 61
                    width: 583
                    height: 79
                    text: qsTr("JOIN GAME")
                    font.pixelSize: 70
                    horizontalAlignment: Text.AlignHCenter
                    font.styleName: "Condensed Bold"
                }
            }
        }
    }
}

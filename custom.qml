import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

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

        Item {
            id: _item
            x: 47
            y: 261
            width: 986
            height: 683

            Image {
                id: queen
                x: 8
                y: 253
                width: 150
                height: 150
                source: "queen.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle3
                    x: 174
                    y: 30
                    width: 250
                    height: 100
                    color: "#ffffff"
                    border.width: 3

                    TextInput {
                        id: textInput2
                        x: 18
                        y: 25
                        width: 214
                        height: 50
                        color: "#9e000000"
                        text: qsTr("set countdown")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Image {
                id: rook
                x: 8
                y: 533
                width: 150
                height: 150
                source: "rook.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle4
                    x: 172
                    y: 25
                    width: 250
                    height: 100
                    color: "#ffffff"
                    border.width: 3
                    TextInput {
                        id: textInput3
                        x: 18
                        y: 25
                        width: 214
                        height: 50
                        color: "#9e000000"
                        text: qsTr("set countdown")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Image {
                id: pawn
                x: 484
                y: 533
                width: 150
                height: 150
                source: "pawn.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle7
                    x: 184
                    y: 25
                    width: 250
                    height: 100
                    color: "#ffffff"
                    border.width: 3
                    TextInput {
                        id: textInput6
                        x: 18
                        y: 25
                        width: 214
                        height: 50
                        color: "#9e000000"
                        text: qsTr("set countdown")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Image {
                id: king
                x: 8
                y: 8
                width: 150
                height: 150
                source: "king.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle2
                    x: 172
                    y: 24
                    width: 250
                    height: 100
                    color: "#ffffff"
                    border.width: 3

                    TextInput {
                        id: textInput
                        x: 18
                        y: 25
                        width: 214
                        height: 50
                        color: "#9e000000"
                        text: qsTr("set countdown")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Image {
                id: knight
                x: 484
                y: 8
                width: 150
                height: 150
                source: "knight.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle5
                    x: 184
                    y: 24
                    width: 250
                    height: 100
                    color: "#ffffff"
                    border.width: 3
                    TextInput {
                        id: textInput4
                        x: 18
                        y: 25
                        width: 214
                        height: 50
                        color: "#9e000000"
                        text: qsTr("set countdown")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Image {
                id: bishop
                x: 484
                y: 253
                width: 150
                height: 150
                source: "bishop.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle6
                    x: 184
                    y: 25
                    width: 250
                    height: 100
                    color: "#ffffff"
                    border.width: 3
                    TextInput {
                        id: textInput5
                        x: 18
                        y: 25
                        width: 214
                        height: 50
                        color: "#9e000000"
                        text: qsTr("set countdown")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }

        Text {
            id: _text
            x: 53
            y: 75
            width: 974
            height: 187
            text: qsTr("CUSTOM")
            font.pixelSize: 90
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.capitalization: Font.AllUppercase
            textFormat: Text.AutoText
            font.weight: Font.Black
        }
    }
    Item {
        id: next
        x: 772
        y: 48
        width: 300  // Zwiększona szerokość
        height: 150 // Zwiększona wysokość

        Shape {
            anchors.fill: parent
            ShapePath {
                strokeWidth: 3  // Możesz zwiększyć grubość linii
                strokeColor: "black"
                fillColor: "black"
                startX: 270; startY: 75  // Punkt początkowy

                // Skalujemy strzałkę (większe wartości x, y)
                PathLine { x: 150; y: 20 }
                PathLine { x: 150; y: 50 }
                PathLine { x: 20; y: 50 }
                PathLine { x: 20; y: 100 }
                PathLine { x: 150; y: 100 }
                PathLine { x: 150; y: 130 }
                PathLine { x: 270; y: 75 }  // Zamykamy ścieżkę
            }
        }

        Text {
            text: "NEXT"
            color: "#000000"
            font.pixelSize: 50
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: -59  // Zwiększamy tekst
            anchors.centerIn: parent
        }
    }
    Item {
        id: back
        x: 8
        y: 48
        width: 300  // Zwiększona szerokość
        height: 150 // Zwiększona wysokość

        Shape {
            anchors.fill: parent
            ShapePath {
                strokeWidth: 3
                strokeColor: "black"
                fillColor: "black"
                startX: 30; startY: 75  // Punkt początkowy (środek strzałki)

                // Odwracamy punkty tak, aby strzałka była w lewo
                PathLine { x: 150; y: 130 }
                PathLine { x: 150; y: 100 }
                PathLine { x: 280; y: 100 }
                PathLine { x: 280; y: 50 }
                PathLine { x: 150; y: 50 }
                PathLine { x: 150; y: 20 }
                PathLine { x: 30; y: 75 }  // Powrót do punktu startowego
            }
        }

        Text {
            text: "BACK"
            color: "#000000"
            font.pixelSize: 50
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 59  // Dostosowujemy tekst do środka strzałki
            anchors.centerIn: parent
        }
    }

}



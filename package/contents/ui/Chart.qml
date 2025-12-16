import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami

// FIX: Use PlasmaComponents3.ScrollView
PlasmaComponents3.ScrollView {
    id: root
    
    // Ensures the scroll view takes up all available space
    anchors.fill: parent

    // The main grid structure
    GridLayout {
        columns: 5 // a, i, u, e, o
        
        // Make the grid fill the width of the view and center it
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        
        // Add some spacing between cells
        rowSpacing: 0
        columnSpacing: 0

        // --- COMPONENT FOR A SINGLE KANA CELL ---
        component KanaCell : Rectangle {
            property string hira: ""
            property string kata: ""
            property string romaji: ""
            
            color: "transparent"
            border.width: 1
            // Use a subtle, theme-aware color for the borders
            border.color: Kirigami.Theme.disabledTextColor
            
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: Kirigami.Units.gridUnit * 4
            Layout.minimumHeight: Kirigami.Units.gridUnit * 4

            ColumnLayout {
                anchors.centerIn: parent
                spacing: Kirigami.Units.smallSpacing / 2
                
                RowLayout {
                    Layout.alignment: Qt.AlignHCenter
                    spacing: Kirigami.Units.largeSpacing

                    PlasmaComponents3.Label {
                        text: hira
                        font.pointSize: Kirigami.Theme.defaultFont.pointSize * 1.5
                        font.weight: Font.Light
                    }
                    PlasmaComponents3.Label {
                        text: kata
                        font.pointSize: Kirigami.Theme.defaultFont.pointSize * 1.5
                        font.weight: Font.Light
                    }
                }

                PlasmaComponents3.Label {
                    text: romaji
                    Layout.alignment: Qt.AlignHCenter
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize * 0.9
                    opacity: 0.7
                }
            }
        }

        // --- TABLE CONTENT ---
        
        // Row 1: Vowels
        KanaCell { hira: "あ"; kata: "ア"; romaji: "a" }
        KanaCell { hira: "い"; kata: "イ"; romaji: "i" }
        KanaCell { hira: "う"; kata: "ウ"; romaji: "u" }
        KanaCell { hira: "え"; kata: "エ"; romaji: "e" }
        KanaCell { hira: "お"; kata: "オ"; romaji: "o" }

        // Row 2: K
        KanaCell { hira: "か"; kata: "カ"; romaji: "ka" }
        KanaCell { hira: "き"; kata: "キ"; romaji: "ki" }
        KanaCell { hira: "く"; kata: "ク"; romaji: "ku" }
        KanaCell { hira: "け"; kata: "ケ"; romaji: "ke" }
        KanaCell { hira: "こ"; kata: "コ"; romaji: "ko" }

        // Row 3: S
        KanaCell { hira: "さ"; kata: "サ"; romaji: "sa" }
        KanaCell { hira: "し"; kata: "シ"; romaji: "shi" }
        KanaCell { hira: "す"; kata: "ス"; romaji: "su" }
        KanaCell { hira: "せ"; kata: "セ"; romaji: "se" }
        KanaCell { hira: "そ"; kata: "ソ"; romaji: "so" }

        // Row 4: T
        KanaCell { hira: "た"; kata: "タ"; romaji: "ta" }
        KanaCell { hira: "ち"; kata: "チ"; romaji: "chi" }
        KanaCell { hira: "つ"; kata: "ツ"; romaji: "tsu" }
        KanaCell { hira: "て"; kata: "テ"; romaji: "te" }
        KanaCell { hira: "と"; kata: "ト"; romaji: "to" }

        // Row 5: N
        KanaCell { hira: "な"; kata: "ナ"; romaji: "na" }
        KanaCell { hira: "に"; kata: "ニ"; romaji: "ni" }
        KanaCell { hira: "ぬ"; kata: "ヌ"; romaji: "nu" }
        KanaCell { hira: "ね"; kata: "ネ"; romaji: "ne" }
        KanaCell { hira: "の"; kata: "ノ"; romaji: "no" }

        // Row 6: H
        KanaCell { hira: "は"; kata: "ハ"; romaji: "ha" }
        KanaCell { hira: "ひ"; kata: "ヒ"; romaji: "hi" }
        KanaCell { hira: "ふ"; kata: "フ"; romaji: "fu" }
        KanaCell { hira: "へ"; kata: "ヘ"; romaji: "he" }
        KanaCell { hira: "ほ"; kata: "ホ"; romaji: "ho" }

        // Row 7: M
        KanaCell { hira: "ま"; kata: "マ"; romaji: "ma" }
        KanaCell { hira: "み"; kata: "ミ"; romaji: "mi" }
        KanaCell { hira: "む"; kata: "ム"; romaji: "mu" }
        KanaCell { hira: "め"; kata: "メ"; romaji: "me" }
        KanaCell { hira: "も"; kata: "モ"; romaji: "mo" }

        // Row 8: Y
        KanaCell { hira: "や"; kata: "ヤ"; romaji: "ya" }
        Item { Layout.fillWidth: true }
        KanaCell { hira: "ゆ"; kata: "ユ"; romaji: "yu" }
        Item { Layout.fillWidth: true }
        KanaCell { hira: "よ"; kata: "ヨ"; romaji: "yo" }

        // Row 9: R
        KanaCell { hira: "ら"; kata: "ラ"; romaji: "ra" }
        KanaCell { hira: "り"; kata: "リ"; romaji: "ri" }
        KanaCell { hira: "る"; kata: "ル"; romaji: "ru" }
        KanaCell { hira: "れ"; kata: "レ"; romaji: "re" }
        KanaCell { hira: "ろ"; kata: "ロ"; romaji: "ro" }

        // Row 10: W & N
        KanaCell { hira: "わ"; kata: "ワ"; romaji: "wa" }
        Item { Layout.fillWidth: true }
        KanaCell { hira: "を"; kata: "ヲ"; romaji: "wo" }
        Item { Layout.fillWidth: true }
        KanaCell { hira: "ん"; kata: "ン"; romaji: "n" }
    }
}
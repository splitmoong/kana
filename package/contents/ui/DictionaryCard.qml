import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami

Kirigami.AbstractCard {
    id: root
    
    property string kanji: ""
    property string reading: ""
    property string meanings: ""
    
    contentItem: Item {
        implicitHeight: contentLayout.implicitHeight + Kirigami.Units.largeSpacing * 2
        
        ColumnLayout {
            id: contentLayout
            anchors.fill: parent
            anchors.margins: Kirigami.Units.largeSpacing
            
            RowLayout {
                PlasmaComponents3.TextArea {
                    text: root.kanji
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize * 2
                    font.weight: Font.Normal
                    readOnly: true
                    selectByMouse: true
                    background: null
                    padding: 0
                }
                PlasmaComponents3.TextArea {
                    text: root.reading
                    opacity: 0.7
                    readOnly: true
                    selectByMouse: true
                    background: null
                    padding: 0
                }
            }
            
            Kirigami.Separator {
                Layout.fillWidth: true
            }
            
            PlasmaComponents3.TextArea {
                text: root.meanings
                wrapMode: Text.WordWrap
                Layout.fillWidth: true
                readOnly: true
                selectByMouse: true
                background: null
                padding: 0
            }
        }
    }
}
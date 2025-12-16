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
        implicitHeight: contentLayout.implicitHeight
        
        ColumnLayout {
            id: contentLayout
            anchors.fill: parent
            anchors.margins: Kirigami.Units.smallSpacing
            
            RowLayout {
                PlasmaComponents3.Label {
                    text: root.kanji
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize * 1.5
                    font.bold: true
                }
                PlasmaComponents3.Label {
                    text: root.reading
                    opacity: 0.7
                }
            }
            
            Kirigami.Separator {
                Layout.fillWidth: true
            }
            
            PlasmaComponents3.Label {
                text: root.meanings
                wrapMode: Text.WordWrap
                Layout.fillWidth: true
            }
        }
    }
}

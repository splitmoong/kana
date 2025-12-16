import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami

ColumnLayout {
    spacing: Kirigami.Units.largeSpacing

    ListModel {
        id: searchResults
    }

    function performSearch(query) {
        if (!query) return;

        var xhr = new XMLHttpRequest();
        var url = "https://jisho.org/api/v1/search/words?keyword=" + encodeURIComponent(query);

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var response = JSON.parse(xhr.responseText);
                    searchResults.clear();

                    response.data.forEach(function(item) {
                        var jap = item.japanese[0] || {};
                        var senses = item.senses[0] || {};
                        var definitions = senses.english_definitions ? senses.english_definitions.join(", ") : "";

                        var word = jap.word ? String(jap.word) : "";
                        var reading = jap.reading ? String(jap.reading) : "";
                        var definitions = senses.english_definitions ? senses.english_definitions.join(", ") : "";

                        // Fallback: if no word (kanji), use reading.
                        var displayKanji = word || reading; 

                        console.log("Appending result:", displayKanji, reading, definitions);

                        searchResults.append({
                            "kanji": displayKanji,
                            "reading": reading,
                            "meanings": definitions
                        });
                    });
                } else {
                    console.log("API Error: " + xhr.status);
                }
            }
        }
        xhr.open("GET", url);
        xhr.send();
    }

    // Search Bar
    Kirigami.SearchField {
        id: searchField
        Layout.fillWidth: true
        placeholderText: i18n("Search...")
        onAccepted: performSearch(text)
    }

    // Results
    PlasmaComponents3.ScrollView {
        Layout.fillWidth: true
        Layout.fillHeight: true

        ListView {
            clip: true
            model: searchResults
            spacing: Kirigami.Units.smallSpacing

            delegate: DictionaryCard {
                width: ListView.view.width
                kanji: model.kanji
                reading: model.reading
                meanings: model.meanings
            }
        }
    }
}
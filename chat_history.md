# Historia rozmów — rebranding (rekonstrukcja)

## Źródło i zakres
Ten plik jest rekonstrukcją na podstawie:
- bieżącej sesji prac nad rebrandingiem,
- zmian w repozytoriach i commitów,
- istniejących notatek (`REBRANDING_NOTES.md`, `history.md`).

Nie zawiera pełnych, surowych transcriptów starszych czatów spoza dostępnego kontekstu roboczego.

## 2026-02-24 — przebieg prac

### 1) Kontynuacja rebrandingu Studio
- Uzgodniono kontynuację rebrandingu nazwy generowanej aplikacji z **Bonita Studio** na **Kirei Studio**.
- Najpierw przejrzano istniejące notatki i dotychczasowy stan zmian.

### 2) Zmiany techniczne w `kireibpm-studio`
- Zmieniono definicję produktu Eclipse (nazwa produktu i `appName`) oraz `Bundle-Name` w pluginie produktu.
- Następnie wykonano ostrożny pass po stringach user-facing, bez migracji OSGi IDs:
  - `org.bonitasoft.studio.application`
  - `org.bonitasoft.studio.intro`
  - `org.bonitasoft.studio.common`
  - `org.bonitasoft.studio.preferences`
- Zmiany objęły lokalizacje EN/FR/ES/JA/PT-BR tam, gdzie tekst był widoczny dla użytkownika.

### 3) Walidacja
- Uruchomiono pełny build:
  - `./mvnw clean package -Pdefault -Pall-in-one`
  - wynik: `BUILD SUCCESS`.
- Uruchomiono wygenerowaną aplikację macOS `.app`.
- Sprawdzono runtime artefakt pod kątem stringów i potwierdzono branding **Kirei Studio**.

### 4) Publikacja zmian w `kireibpm-studio`
- Zmiany zostały skomitowane i wypchnięte na branch `release/1.0.0`.
- Referencja: commit `7bb9a05f4`.

### 5) Utworzenie repo `kireibpm-general`
- Utworzono nowe repo i przeniesiono:
  - `REBRANDING_NOTES.md`,
  - `history.md`,
  - cały katalog `kireibpm-scripts`.
- Uzupełniono notatki i historię o wykonane dziś działania.
- Repo opublikowano na GitHub:
  - https://github.com/kireibpm/kireibpm-general
- Referencja commitu inicjalnego: `8bc5730`.

## Decyzje i ustalenia
- Na tym etapie utrzymanie prac na branchu `release/1.0.0`; PR i merge do `main` później.
- Priorytet: stabilny rebranding UI i artefaktów, bez ryzykownej zmiany identyfikatorów OSGi/Eclipse.

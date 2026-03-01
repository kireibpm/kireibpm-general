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

## 2026-03-01 — historia dzisiejszej wymiany

### 1) Domknięcie migracji `org.bonitasoft.web` -> `org.kireibpm.web`
- Przeprowadzono audyt i naprawę zależności w `kireibpm-ui-designer` oraz `ui-designer-artifact-builder`.
- Potwierdzono, że docelowo `kireibpm-ui-designer` buduje się na stabilnym `ui-designer-artifact-builder:1.0.10`.
- Usunięto zależności tranzytywne wskazujące na stare koordynaty `org.bonitasoft.web`.

### 2) Wyjaśnienie nazewnictwa katalogu/repo artifact-builder
- Uzgodniono, że nazwa katalogu/repo może być zmieniona na `kireibpm-ui-designer-artifact-builder`.
- Wykonano rename lokalny i usunięto stary katalog snapshot.
- Napotkano efekt uboczny `git worktree` (utrata wskaźnika `.git` po usunięciu katalogu rodzica); odtworzono repo jako pełny clone i przywrócono zmiany.

### 3) Przejście organizacji z `bonitasoft` na `kireibpm`
- Zmieniono odwołania w workflow `kireibpm-ui-designer` (checkout repo, linki PR, akcja Slack) na organizację `kireibpm`.
- Zmieniono metadane repo artifact-builder (SCM/README/package metadata) tak, aby wskazywały repo w organizacji `kireibpm`.

### 4) Utworzenie nowego repo i publikacja branchy
- Na prośbę użytkownika utworzono repo:
  - `https://github.com/kireibpm/kireibpm-ui-designer-artifact-builder`.
- Wypchnięto branch `release/1.0.0` do:
  - `kireibpm-ui-designer-artifact-builder` (commit `2d69d30`),
  - `kireibpm-ui-designer` (commit `776c6ca2`).

### 5) Dodatkowe polecenie: push `kireibpm-engine`
- Sprawdzono stan repo `kireibpm-engine` na `release/1.0.0`.
- Scommitowano lokalne zmiany i wypchnięto do origin:
  - commit `8ab8a2c` na `release/1.0.0`.

### 6) Końcowa walidacja statusu repo
- Potwierdzono, że:
  - `kireibpm-portal-js` jest zsynchronizowany na `release/1.0.0` (`6258ca1`),
  - `kireibpm-ui-designer` jest zsynchronizowany na `release/1.0.0` (`776c6ca2`).

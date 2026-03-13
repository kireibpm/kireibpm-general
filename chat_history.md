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

### 7) `kireibpm-js-components` — hardening i stabilizacja
- Wykonano rebranding repo `bonita-js-components` -> `kireibpm-js-components` (metadane pakietu, README, docs/i18n).
- Zrealizowano Stage 2: migracja testów z PhantomJS do ChromeHeadless (CI/local), baseline Node 20 oraz skrypty `test:ci` i `audit`.
- Zrealizowano Stage 3: redukcja podatności przez kontrolowane `resolutions` i usunięcie `gulp-open`; końcowy wynik audytu: `low 27`, `moderate 40`, `high 58`, `critical 0`.
- Potwierdzono stabilność: `yarn test:ci` przechodzi (`120/120 SUCCESS`).
- Na decyzję użytkownika zatrzymano dalsze podbijanie zależności na obecnym, stabilnym poziomie.
- Dokument `STAGE2_HARDENING.md` przeniesiono do repo `kireibpm-general` i odnotowano to w `history.md`.

## 2026-03-13 — porządki branchy, publikacja npm i kolejny pass Studio

### 1) Uporządkowanie branchy i publikacji
- Użytkownik zdecydował o uproszczeniu polityki branchy: bieżące repozytoria mają zostać przy `main`, a stare branche release miały zostać usunięte tam, gdzie nie były już potrzebne.
- W tym samym ciągu prac dopięto publikację `@kireibpm/js-components` do npm.

### 2) Migracja downstreamów z `bonita-js-components`
- `kireibpm-ui-designer` i `kireibpm-portal-js` zostały przepięte z `bonita-js-components` na `@kireibpm/js-components`.
- Dodatkowo w `kireibpm-ui-designer/frontend/package.json` poprawiono pozostałe metadane po forku: opis repozytorium, link `repository`, `bugs` i `homepage` wskazują już na KireiBPM.

### 3) Safe cleanup pozostałości po starej nazwie
- Zanim ruszył dalszy branding, użytkownik poprosił o sprawdzenie, czy w drzewach źródłowych nie zostały zbędne katalogi po starym namespace.
- Przeprowadzono audyt zamiast masowego kasowania: większość `org.bonitasoft.*` w monorepo nadal jest aktywna albo potrzebna kompatybilnościowo.
- Konkretny wskazany katalog w `kireibpm-ui-designer`:
  - `backend/contract/src/main/java/org/bonitasoft/web/designer/model`
  okazał się pusty i został usunięty razem z pustymi parentami, po potwierdzeniu że aktywne klasy żyją już pod `org/kireibpm/web/designer/model/...`.

### 4) Kolejny pass rebrandingu `kireibpm-studio`
- Po cleanupie wykonano następny, ostrożny pass po user-facing stringach `Bonita Studio` -> `Kirei Studio`.
- Zmieniono m.in.:
  - opisy feature'ów,
  - teksty instalatora i ostrzeżenia AV w kilku locale,
  - template instalatora,
  - komunikaty pluginu `org.bonitasoft.studio.team.git`,
  - opis providera w `org.bonitasoft.studio.application`,
  - oczekiwania testów SWTBot na tytuł głównego okna `Kirei Studio`.

### 5) Walidacja i blocker
- Edytowane pliki XML/properties/plugin przeszły walidację składniową bez nowych błędów.
- Próba pełnego builda `./mvnw clean package -Pdefault -Pall-in-one` nie zweryfikowała zmian end-to-end, bo build zatrzymuje się wcześniej na pre-existing zmianie w `bundles/plugins/pom.xml`.
- Problem: agregator wskazuje na nieistniejące moduły:
  - `org.kireibpm.engine.bonita-client`
  - `org.kireibpm.engine.bonita-common`
- To zostało uznane za stan niezwiązany z bieżącym brandingiem.

### 6) Co mimo to udało się potwierdzić
- W istniejących artefaktach Studio znalezionych w `all-in-one/target/products` branding jest już spójny:
  - archiwa mają prefiks `KireiStudioCommunity-...`,
  - istnieje też `.app` na macOS i `.exe` na Windows z tym samym brandingiem.
- Ustalono więc, że następny krok to albo domknięcie tego blokera w `bundles/plugins/pom.xml`, albo drugi pass po pozostałych user-facing stringach `Bonita Studio` w message bundle'ach.

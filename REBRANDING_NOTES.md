# Kirei Studio / KireiBPM — notatki z rebrandingu (release/1.0.0)

Ten plik to „spowiednik” prac wykonanych przy rebrandingu projektu Studio oraz powiązanej dystrybucji.
Celem było uzyskanie brandingu **KireiBPM / Kirei Studio** w artefaktach, paczkach i UI, przy jednoczesnym uniknięciu ryzykownej migracji identyfikatorów Eclipse/OSGi.

## Zakres i zasady

### Repozytoria
- `kireibpm-distrib` — paczkowanie, Docker, nazwy artefaktów dystrybucji.
- `kireibpm-studio` (to repo) — Studio oparte o Eclipse RCP/Tycho (multi-module Maven).

### Kluczowa decyzja (minimalizacja ryzyka)
- Zmieniamy **Maven coordinates** (groupId/artifactId gdzie ma sens) oraz **branding produktu** (nazwy widoczne dla użytkownika, nazwa launchera),
- **Nie** migrujemy masowo identyfikatorów OSGi/Eclipse (np. `org.bonitasoft.*`), żeby nie rozsypać zależności Tycho/p2/feature/product.

W praktyce: „na zewnątrz” ma być Kirei, a „wewnątrz” (ID bundli, product id) zostaje zgodne z upstreamem, jeśli to pomaga w kompatybilności.

## 1) `kireibpm-distrib` — co zostało zrobione

### Maven / nazwy paczek
- Zmienione współrzędne Maven na `org.kireibpm.*`.
- Dostosowane nazwy paczek/archiwów dystrybucji do brandingu KireiBPM Community.

### Docker
- Zmienione nazewnictwo obrazu na `kireibpm/kirei`.
- Zmieniona baza na **Java 17 Alpine**: `amazoncorretto:17-alpine`.
- Poprawiony start kontenera (ENTRYPOINT) i wykonany smoke-run.

### Dokumentacja
- Dopisana informacja, że baza `amazoncorretto:17-alpine` jest multi-arch (typowo `linux/amd64` oraz `linux/arm64`).

### Referencja do commita
- `kireibpm-distrib`: commit `90995aa` (dopisek do Docker README o multi-arch).

## 2) `kireibpm-studio` — co zostało zrobione

### Maven/Tycho (groupId)
- Przestawiony groupId na `org.kireibpm.studio…` w wielu modułach.
- Zrobione hurtowo, ale **bezpiecznie**: podmiana tylko w tagach `<groupId>…</groupId>` w plikach `pom.xml`.

To pozwala na rebranding współrzędnych Maven bez dotykania OSGi IDs.

### Branding produktu (UI / launcher / installer)
- Ustawiona nazwa produktu na **„Kirei Studio”**.
- Ustawiona nazwa launchera/wykonywalnego na **`KireiStudioCommunity`**.
- Zachowany `product id`: `org.bonitasoft.studio.product` (celowo).

Najważniejsze pliki:
- `README.md` — nazwa projektu.
- `all-in-one/bonitastudio-features.product` — definicja produktu (Eclipse product).
- `all-in-one/installer/installer.properties` — branding instalatora i skrótu (m.in. `shortcut.base`).

### Build weryfikacyjny (pełny „all-in-one”)
Komenda używana do zbudowania kompletnej paczki:

```bash
./mvnw clean package -Pdefault -Pall-in-one
```

Wynik:
- Build zakończył się `BUILD SUCCESS`.
- Wygenerowane paczki dla Linux/macOS/Windows oraz aplikacja `.app` na macOS.
- Aplikacja została uruchomiona na macOS i potwierdzono, że działa.

Typowe lokalizacje artefaktów:
- Archiwa: `all-in-one/target/products/` (np. `KireiStudioCommunity-<version>-*.{tar.gz,zip}`)
- macOS `.app`: pod `all-in-one/target/products/org.bonitasoft.studio.product/macosx/cocoa/.../*.app`

### Referencja do commita
- `kireibpm-studio`: commit `1abd96918` (rebranding do Kirei Studio).

## 3) „kireibmp” vs „kireibpm” — wyjaśnienie literówki z logów

Podczas builda w logach pojawiała się fraza `kireibmp`. Sprawdzenie repo pod kątem tej literówki (po wykluczeniu `target/`) nie wykazało jej w źródłach.

Przyczyna: lokalny katalog roboczy na dysku miał nazwę `~/kireibmp`, więc absolutne ścieżki w logach i plikach generowanych zawierały tę literówkę.

Rozwiązanie:
- przemianowano katalog na poprawny: `~/kireibpm`.

## Szybka checklista (gdyby ktoś odtwarzał za rok)

1. Pracuj na gałęzi `release/1.0.0`.
2. Buduj pełne Studio:
   - `./mvnw clean package -Pdefault -Pall-in-one`
3. Szukaj artefaktów w `all-in-one/target/products/`.
4. Na macOS uruchom `.app` z `all-in-one/target/products/...`.

## Notatka o intencjach

To podejście celowo faworyzuje stabilność builda i kompatybilność Tycho/Eclipse: branding i współrzędne Maven są „nasze”, ale wewnętrzne IDs pozostają zgodne z upstreamem, jeśli zmiana niosłaby ryzyko.

## 4) Ostatnie zmiany (2026-02-24)

### Cel tej rundy
- Dokończenie user-facing rebrandingu nazwy aplikacji z **Bonita Studio** na **Kirei Studio**.
- Utrzymanie bezpieczeństwa zmian: bez migracji identyfikatorów OSGi/Eclipse.

### Co zostało zmienione
- Produkt Eclipse:
   - `bundles/plugins/org.bonitasoft.studio-product/plugin.xml`
   - `bundles/plugins/org.bonitasoft.studio-product/META-INF/MANIFEST.MF`
   - podmiana `name`, `appName`, `aboutText` oraz `Bundle-Name` na branding Kirei.
- Komunikaty i etykiety UI (wielojęzycznie):
   - `org.bonitasoft.studio.application` (`messages*.properties`, `plugin*.properties`)
   - `org.bonitasoft.studio.intro` (`plugin*.properties`)
   - `org.bonitasoft.studio.common` (`messages*.properties`)
   - `org.bonitasoft.studio.preferences` (`messages*.properties`, `MANIFEST.MF`)
- Zakres obejmował m.in. welcome label, log label, komunikaty o wersji workspace oraz opisy motywu/restartu.

### Weryfikacja
- Pełny build i paczkowanie:
   - `./mvnw clean package -Pdefault -Pall-in-one`
   - wynik: `BUILD SUCCESS`
- Uruchomienie wygenerowanej aplikacji `.app` na macOS i kontrola stringów brandingowych w artefakcie runtime.

### Referencja do commita
- `kireibpm-studio`: commit `7bb9a05f4`.

## 5) Konsolidacja dokumentacji i skryptów (2026-02-24)

### Nowe repo pomocnicze
- Utworzone repo: `kireibpm-general`.
- Cel: centralizacja notatek roboczych i skryptów pomocniczych poza repo kodowym Studio.

### Co przeniesiono
- `REBRANDING_NOTES.md`
- `history.md`
- cały katalog `kireibpm-scripts`

### Dodatkowa dokumentacja rozmów
- Dodany plik `chat_history.md` zawierający rekonstrukcję rozmów i decyzji dotyczących rebrandingu z ostatnich dni (na podstawie dostępnego kontekstu roboczego, commitów i notatek).

### Repo URL
- `https://github.com/kireibpm/kireibpm-general`

## 6) Migracja cross-repo + publikacja release/1.0.0 (2026-03-01)

### Cel tej rundy
- Domknięcie rebrandingu zależności webowych (`org.bonitasoft.web` -> `org.kireibpm.web`) w obszarze UI Designer.
- Przejście z wersji snapshot na stabilną wersję artifact-builder.
- Ujednolicenie publikacji do organizacji `kireibpm` i dopięcie pushy na gałęzie `release/1.0.0`.

### Najważniejsze działania
- `kireibpm-ui-designer`:
   - aktualizacja backendu do `ui-designer-artifact-builder.version = 1.0.10` (stabilna wersja),
   - utrzymanie współrzędnych `org.kireibpm.web`,
   - potwierdzony pełny build i brak zależności `org.bonitasoft.web:*` w dependency tree.
- `ui-designer-artifact-builder`:
   - przygotowanie stabilnej bazy z tagu `1.0.10`,
   - migracja współrzędnych Maven do `org.kireibpm.web`,
   - zmiana nazwy katalogu roboczego na `kireibpm-ui-designer-artifact-builder`,
   - poprawa metadanych SCM/README/workflow pod organizację `kireibpm`.
- `kireibpm-ui-designer` workflow:
   - przełączenie odwołań z `bonitasoft/*` na `kireibpm/*` dla repo artifact-builder i akcji slack.

### Repozytoria i publikacja
- Utworzone nowe repo:
   - `https://github.com/kireibpm/kireibpm-ui-designer-artifact-builder` (private).
- Wypchnięte branche:
   - `kireibpm-ui-designer-artifact-builder`: `release/1.0.0` (commit `2d69d30`),
   - `kireibpm-ui-designer`: `release/1.0.0` (commit `776c6ca2`),
   - `kireibpm-engine`: `release/1.0.0` (commit `8ab8a2c`).
- Weryfikacja synchronizacji:
   - `kireibpm-portal-js`: `release/1.0.0` zsynchronizowany (`6258ca1`),
   - `kireibpm-ui-designer`: `release/1.0.0` zsynchronizowany (`776c6ca2`).

### Różnice 1.0.9 vs 1.0.10 (artifact-builder)
- Zakres zmian między tagami: 6 commitów, 22 pliki, `+230/-52`.
- Zmiana funkcjonalna: poprawka `tabContainer` (kontrola lazy loading zakładek).
- Pozostałe zmiany: i18n, workflowy CI, podbicia wersji.
- W samych POM-ach różnice głównie wersyjne (`1.0.9 -> 1.0.10`), bez dużych zmian zależności runtime.

## 7) Status kolejnej rundy brandingu Studio (2026-03-13)

### Co zostało dopięte
- Kolejny pass user-facing stringów `Bonita Studio` -> `Kirei Studio` w `kireibpm-studio`:
   - `bundles/features/studio-feature/feature.xml`
   - `bundles/features/platform-specific-feature/feature.xml`
   - `all-in-one/installer/i18n/messages*.properties`
   - `all-in-one/installer/installer_project_template.xml`
   - `bundles/plugins/org.bonitasoft.studio.team.git/messages*.properties`
   - `bundles/plugins/org.bonitasoft.studio.application/plugin.xml`
   - testy SWTBot oczekujące tytułu głównego okna `Kirei Studio`

### Cleanup legacy katalogów
- W `kireibpm-ui-designer` usunięto pusty pozostały katalog po starym namespace:
   - `backend/contract/src/main/java/org/bonitasoft/web/designer/model`
- Decyzja była świadomie zawężona tylko do pustych, nieużywanych katalogów; aktywne pakiety `org.bonitasoft.*` pozostają tam, gdzie są jeszcze potrzebne kompatybilnościowo.

### Walidacja
- Edytowane pliki z tej rundy przeszły walidację składniową bez nowych błędów.
- Pełny build walidacyjny:

```bash
./mvnw clean package -Pdefault -Pall-in-one
```

nie przeszedł do etapu weryfikacji brandingu, ponieważ build zatrzymuje się wcześniej na pre-existing zmianie w `bundles/plugins/pom.xml` wskazującej na nieistniejące moduły:
- `org.kireibpm.engine.bonita-client`
- `org.kireibpm.engine.bonita-common`

### Co udało się potwierdzić mimo blokera
- Istniejące artefakty pod `all-in-one/target/products` są już nazwane zgodnie z brandingiem `KireiStudioCommunity`.
- Oznacza to, że bieżący blocker dotyczy agregacji modułów builda, a nie samego brandingu produktu/artefaktów.

### Następna bezpieczna sekwencja
1. Rozstrzygnąć pre-existing zmianę w `bundles/plugins/pom.xml`.
2. Ponowić pełny build `-Pdefault -Pall-in-one`.
3. Dopiero potem zrobić drugi pass po pozostałych user-facing stringach `Bonita Studio`, które nadal mogą siedzieć w message bundle'ach.

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

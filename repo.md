# KireiBPM — status niezależności repozytoriów

Aktualizacja: 2026-03-02

- snapshot globalny: 2026-03-01 (skan tekstowy wszystkich repo w `kireibpm-org-clone`)
- aktualizacja punktowa: 2026-03-02 (`kireibpm-engine`, commit `d02506d`)

## Legenda

- **TODO** — znaleziono tylko legacy referencje (`org.bonitasoft` / `com.bonitasoft`), brak nowych (`org.kireibpm` / `com.kireibpm`)
- **IN_PROGRESS** — występują jednocześnie stare i nowe referencje
- **READY** — brak starych referencji i obecne nowe referencje
- **NO_SIGNAL** — brak zarówno starych, jak i nowych referencji (repo nie bierze udziału bezpośrednio w migracji nazw albo wymaga innego sygnału)

## Podsumowanie globalne (54 repo)

- **TODO:** 38
- **IN_PROGRESS:** 13
- **READY:** 0
- **NO_SIGNAL:** 3

## Kluczowe obserwacje

- `kireibpm-engine`, `kireibpm-portal-js`, `kireibpm-js-components` są funkcjonalnie po dużym kroku migracji, ale nadal mają pojedyncze legacy wpisy (głównie testy, zasoby demo/dist, build artifacts, konfiguracje historyczne).
- Największy dług migracyjny po liczbie legacy trafień: `kireibpm-studio`, `kireibpm-process-model`, `kireibpm-ui-designer-artifact-builder`, `kireibpm-web-pages`, `kireibpm-ui-designer`.
- Grupa konektorów/actorfilterów jest w większości jeszcze **TODO** i nadaje się do seryjnej migracji wg jednego szablonu zmian.

## Stan wszystkich repo (snapshot)

### IN_PROGRESS (13)

- `kireibpm-studio` (old=43477, new=252)
- `kireibpm-ui-designer-artifact-builder` (old=2290, new=31)
- `kireibpm-web-pages` (old=1491, new=107)
- `kireibpm-ui-designer` (old=852, new=20)
- `kireibpm-engine` (old=135, new=33566)
- `kireibpm-distrib` (old=67, new=58)
- `kireibpm-artifacts-model` (old=31, new=1658)
- `kireibpm-portal-js` (old=20, new=703)
- `kireibpm-admin-application` (old=13, new=41)
- `kireibpm-js-components` (old=9, new=165)
- `kireibpm-super-admin-application` (old=5, new=29)
- `kireibpm-application-directory` (old=2, new=20)
- `kireibpm-user-application` (old=2, new=16)

### Update 2026-03-02 (punktowo: kireibpm-engine, faza 1)

- Wypchnięty commit: `d02506d` na `kireibpm-engine/release/1.0.0`
- Zakres: migracja testowych connector IDs (`TestConnector*`) z `org.bonitasoft.connector.*` do `org.kireibpm.connector.*` (15 plików resources)
- Efekt mierzalny (pliki śledzone przez git, przed/po commit):
   - old refs (`org.bonitasoft|com.bonitasoft`): **87 → 63**
   - new refs (`org.kireibpm|com.kireibpm`): **32813 → 32837**
- Walidacja: pełny build `kireibpm-engine` przeszedł (`./gradlew build --no-daemon`, BUILD SUCCESSFUL)

### Update 2026-03-02 (punktowo: kireibpm-engine, faza 2)

- Wypchnięte commity na `kireibpm-engine/release/1.0.0`:
   - `e39f4ff` — cleanup legacy referencji w `platform/platform-setup` (setenv, test `bonita.xml`, e2e script)
   - `2ccc22d` — kolejna redukcja legacy referencji w testach/fixture (17 plików)
   - `7bc8c5d` — normalizacja API test namespace na `org.kireibpm` + dopisanie noty w README, dlaczego część fixture/BDM zostaje na `com.kireibpm`
- Efekt mierzalny (pliki śledzone przez git, stan bieżący):
   - old refs (`org.bonitasoft|com.bonitasoft`): **17**
   - new refs (`org.kireibpm|com.kireibpm`): **32886**
- Walidacja: celowane testy po `7bc8c5d` przeszły (`SchedulerQueryTest`, `HttpAPIServletCallTest`), a pełny build engine pozostaje zielony.

### NO_SIGNAL (3)

- `kireibpm-action-release-connector`
- `kireibpm-platform-releases`
- `kireibpm-widget-builder`

### TODO (38)

- `kireibpm-process-model` (old=14803)
- `_upstream-bonita-artifacts-model` (old=1591)
- `kireibpm-java-client` (old=971)
- `kireibpm-project-maven-plugin` (old=667)
- `kireibpm-connector-ai` (old=246)
- `kireibpm-userfilters` (old=223)
- `kireibpm-connector-rest` (old=153)
- `kireibpm-rest-api-extension-archetype` (old=150)
- `kireibpm-actorfilter-archetype` (old=121)
- `kireibpm-connector-email` (old=104)
- `kireibpm-connector-cmis` (old=81)
- `kireibpm-connector-uipath` (old=72)
- `kireibpm-connector-archetype` (old=64)
- `kireibpm-connector-document-converter` (old=58)
- `kireibpm-connector-googlecalendar-V3` (old=51)
- `kireibpm-connector-webservice` (old=39)
- `kireibpm-connector-salesforce` (old=37)
- `kireibpm-connector-document-templating` (old=35)
- `kireibpm-actorfilter-custom-user-info` (old=34)
- `kireibpm-actorfilter-same-task-user` (old=34)
- `kireibpm-page-authorization-rules` (old=32)
- `kireibpm-connector-database` (old=30)
- `kireibpm-connector-twitter` (old=30)
- `kireibpm-actorfilter-initiator-manager` (old=28)
- `kireibpm-connector-groovy` (old=25)
- `kireibpm-actorfilter-initiator` (old=24)
- `kireibpm-actorfilter-user-manager` (old=24)
- `kireibpm-connector-ldap` (old=24)
- `kireibpm-connector-sap` (old=21)
- `kireibpm-connector-slack` (old=21)
- `kireibpm-connector-shell-script` (old=20)
- `kireibpm-actorfilter-single-user` (old=19)
- `kireibpm-rest-api-extension-user-information-example` (old=19)
- `kireibpm-openapi` (old=14)
- `kireibpm-theme-archetype` (old=14)
- `kireibpm-web-devtools` (old=6)
- `kireibpm-data-repository` (old=5)
- `kireibpm-widget-contrib` (old=1)

## Co zostało do zrobienia

1. **Dowieźć IN_PROGRESS do 0 legacy runtime refs**
   - priorytet: `kireibpm-engine`, `kireibpm-portal-js`, `kireibpm-js-components`
   - odseparować legacy tylko do fixture/test-data, usunąć z kodu wykonywalnego i dystrybucyjnego

2. **Seryjna migracja grupy TODO (connector/actorfilter/archetype)**
   - ujednolicony playbook: package names, module ids, test fixtures, README, release branch/tag

3. **Największe monolity**
   - osobne fale migracji dla: `kireibpm-studio`, `kireibpm-process-model`, `kireibpm-ui-designer*`, `kireibpm-web-pages`
   - obowiązkowe bramki: build + test + smoke dependency consumers

4. **Wyrównanie metadanych i zależności**
   - plugin IDs, maven/gradle coordinates, github URLs, CI workflows
   - usunąć pozostałe odwołania do `bonitasoft/*` tam, gdzie nie są celowo utrzymywane dla kompatybilności

## Uwagi do metodologii

- To jest **skan tekstowy** (heurystyka) po repozytoriach; liczby nie rozróżniają automatycznie runtime vs test/docs/generated.
- W wielu repo wynik zawiera też `build/`, `target/`, `.tmp`, `dist` — przed finalnym “DONE” warto odsiać artefakty generowane i potwierdzić wynik na czystym drzewie.
- Status należy traktować jako **dashboard postępu**, nie jako formalny audyt zgodności.
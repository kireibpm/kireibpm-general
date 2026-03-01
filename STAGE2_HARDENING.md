# Stage 2 hardening (`kireibpm-js-components`)

## Cel
Przygotować repo do bezpieczniejszego utrzymania i publikacji w organizacji `kireibpm` bez łamania kompatybilności runtime.

## Zrobione w tym etapie

1. **Baseline runtime/CI**
   - dodano `.nvmrc` z Node `20`
   - zaktualizowano `.travis.yml` do Node `20`

2. **Test runner bez PhantomJS**
   - usunięto `karma-phantomjs-launcher`
   - dodano `karma-chrome-launcher`
   - `karma.conf.js` używa teraz `ChromeHeadless` / `ChromeHeadlessNoSandbox` (w CI)

3. **Skrypty bezpieczeństwa i CI**
   - dodano skrypty:
     - `yarn test:ci`
     - `yarn audit`
     - `yarn audit:json`

4. **Metadane silnika**
   - `engines.node` ustawione na `>=18`
   - `engines.yarn` ustawione na `>=1.22.0`

## Znane ryzyka po etapie 2

- Repo nadal ma **duży dług CVE** wynikający z bardzo starego stacku (`gulp 3`, stare pluginy, stare łańcuchy transitive).
- Licencja projektu pozostaje `GPL-2.0-or-later`.
- Namespace’y Angular `org.bonitasoft.*` pozostają celowo (kompatybilność z istniejącymi integracjami).

## Etap 3 (rekomendowany)

1. Migracja z `gulp 3` do `gulp 4`.
2. Aktualizacja łańcucha testowego (`karma`, coverage, launchery) do wspieranych wersji.
3. Redukcja podatności `high/critical` przez aktualizacje direct deps i kontrolowane pinowanie transitive.
4. Dodanie automatyki bezpieczeństwa (`dependabot` / regularny `audit:json` w CI).
5. Opcjonalnie: równoległa gałąź `v2` z rebrandingiem namespace’ów modułów Angular.

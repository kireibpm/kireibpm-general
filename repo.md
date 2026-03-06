# KireiBPM — dashboard migracji namespace

Aktualizacja: 2026-03-02
Snapshot: 2026-03-02 (globalny skan tekstowy `kireibpm-org-clone`)

## Legenda

- **TODO** — występują tylko legacy referencje (`org.bonitasoft` / `com.bonitasoft`), brak nowych
- **IN_PROGRESS** — występują jednocześnie stare i nowe referencje
- **READY** — brak starych referencji i obecne nowe referencje
- **NO_SIGNAL** — brak zarówno starych, jak i nowych referencji

## Podsumowanie (54 repo)

| Status | Count |
|---|---:|
| TODO | 37 |
| IN_PROGRESS | 13 |
| READY | 0 |
| NO_SIGNAL | 4 |

## Stan bieżący repozytoriów

| Repo | Status | Old | New | Last updated | Notes |
|---|---|---:|---:|---|---|
| kireibpm-studio | IN_PROGRESS | 41645 | 230 | 2026-03-02 | Największy wolumen legacy |
| kireibpm-ui-designer-artifact-builder | IN_PROGRESS | 0 | 630 | 2026-03-06 | Batch 1: testowe `utils`; Batch 2: `model.migrationReport`; Batch 3: `model.exception`; Batch 4: `model.fragment`; Batch 5: `model.data`; Batch 6: `model.asset`; Batch 7: `model.widget`; Batch 8: `model.ParameterType`; Batch 9: `model.ArtifactStatusReport`; Batch 10: `model.JsonViewLight` + `model.JsonViewMetadata`; Batch 11: `model.JsonViewPersistence` + `model.JsonHandlerFactory`; Batch 12: `model.Identifiable` + `model.Assetable` + `model.ElementContainer` + `model.HasUUID`; Batch 13: `model.ModelException`; Batch 14: `model.LocalizationPrettyPrinter`; Batch 15: `model.JacksonDeserializationProblemHandler`; Batch 16: `model.JacksonJsonHandler`; Batch 17: `model.DesignerArtifact`; Batch 18: `model.JsonHandler`; Batch 19: `model.page.PageData`; Batch 20: `model.page.WebResource` + cleanup wildcard; Batch 21: `model.page.Form`; Batch 22: `model.page.Tab`; Batch 23: `model.page.ModalContainer`; Batch 24: `model.page.FormContainer`; Batch 25: `model.page.AbstractPage` (walidacja przełączona na `./mvnw`/Java 17); Batch 26: `model.page.TabsContainer`; Batch 27: `model.page.TabContainer`; Batch 28: `model.page.FragmentElement`; Batch 29: `model.page.Previewable`; Batch 30: `model.page.PropertyValue`; Batch 31: `model.page.Container`; Batch 32: `model.page.Component`; Batch 33: `model.page.Element`; Batch 34: `model.page.Page`; Batch 35: pakiety testowe (`model/src/test` + `builder`); Batch 36: osobny batch 44 plików (`common.repository*`); Batch 37: `common.livebuild` (main+test); Batch 38: `i18n` (main+test); Batch 39: testy root `controller.export` + `controller.asset`; Batch 40: pełne `controller.asset` + `controller.export` (main/properties/steps); Batch 41: testy `controller.importer` (+ `dependencies`, `mocks`); Batch 42: pełne `controller.importer` (main/dependencies/report) + follow-up import fix; Batch 43: pełne `common.repository` (main+test, `exception`); Batch 44: pełne core `artifact-builder` + relokacja `ElementVisitor`; Batch 45: cleanup zasobów testowych `migration/Localization`; Batch 46: align importów `ElementVisitor` w `common` i `generator-angularjs` + drop legacy resources; Batch 47: migracja `generator-angularjs` z `org.bonitasoft.web.angularjs` do `org.kireibpm.web.angularjs` (main+test+resources); Batch 48: migracja `common.visitor` do `org.kireibpm.web.designer.common.visitor`; Batch 49: migracja `common.export` + `common.generator.rendering` do `org.kireibpm`; Batch 50: migracja root `common` (`CommonGeneratorStrategy`, `GeneratorStrategy`, `IGeneratorProperties`) do `org.kireibpm` |
| kireibpm-ui-designer | IN_PROGRESS | 642 | 217 | 2026-03-02 | Frontend alias + migracja backend `model.contract` + testowy batch `webapp` (`assertions`/`utils` imports) do `org.kireibpm` |
| kireibpm-distrib | IN_PROGRESS | 63 | 21 | 2026-03-02 | Pośrednie artefakty dystrybucyjne |
| kireibpm-web-pages | IN_PROGRESS | 57 | 32 | 2026-03-02 | Dużo danych historycznych |
| kireibpm-artifacts-model | IN_PROGRESS | 30 | 1548 | 2026-03-02 | Przewaga nowych refs, zostały legacy |
| kireibpm-admin-application | IN_PROGRESS | 12 | 34 | 2026-03-02 | Końcowa faza cleanup |
| kireibpm-js-components | IN_PROGRESS | 9 | 55 | 2026-03-02 | Głównie docs/demo/dist |
| kireibpm-engine | IN_PROGRESS | 7 | 32896 | 2026-03-02 | Pozostałości celowe (validator/test/plugin/bin) |
| kireibpm-super-admin-application | IN_PROGRESS | 4 | 23 | 2026-03-02 | Końcowa faza cleanup |
| kireibpm-application-directory | IN_PROGRESS | 2 | 14 | 2026-03-02 | Końcowa faza cleanup |
| kireibpm-portal-js | IN_PROGRESS | 1 | 389 | 2026-03-02 | Celowy alias kompatybilności |
| kireibpm-user-application | IN_PROGRESS | 1 | 10 | 2026-03-02 | Końcowa faza cleanup |
| kireibpm-process-model | TODO | 12164 | 0 | 2026-03-02 | Duży monolit legacy |
| _upstream-bonita-artifacts-model | TODO | 1578 | 0 | 2026-03-02 | Upstream mirror |
| kireibpm-java-client | TODO | 964 | 0 | 2026-03-02 | Brak nowych refs |
| kireibpm-project-maven-plugin | TODO | 622 | 0 | 2026-03-02 | Brak nowych refs |
| kireibpm-connector-ai | TODO | 241 | 0 | 2026-03-02 | Connector batch |
| kireibpm-userfilters | TODO | 221 | 0 | 2026-03-02 | Batch migracyjny |
| kireibpm-connector-rest | TODO | 143 | 0 | 2026-03-02 | Connector batch |
| kireibpm-rest-api-extension-archetype | TODO | 142 | 0 | 2026-03-02 | Archetype batch |
| kireibpm-actorfilter-archetype | TODO | 114 | 0 | 2026-03-02 | Archetype batch |
| kireibpm-connector-email | TODO | 97 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-cmis | TODO | 74 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-uipath | TODO | 66 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-archetype | TODO | 57 | 0 | 2026-03-02 | Archetype batch |
| kireibpm-connector-document-converter | TODO | 49 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-googlecalendar-V3 | TODO | 45 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-webservice | TODO | 33 | 0 | 2026-03-02 | Connector batch |
| kireibpm-page-authorization-rules | TODO | 32 | 0 | 2026-03-02 | Brak nowych refs |
| kireibpm-connector-salesforce | TODO | 30 | 0 | 2026-03-02 | Connector batch |
| kireibpm-actorfilter-custom-user-info | TODO | 29 | 0 | 2026-03-02 | Actorfilter batch |
| kireibpm-actorfilter-same-task-user | TODO | 29 | 0 | 2026-03-02 | Actorfilter batch |
| kireibpm-connector-document-templating | TODO | 26 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-twitter | TODO | 25 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-database | TODO | 24 | 0 | 2026-03-02 | Connector batch |
| kireibpm-actorfilter-initiator-manager | TODO | 23 | 0 | 2026-03-02 | Actorfilter batch |
| kireibpm-actorfilter-initiator | TODO | 19 | 0 | 2026-03-02 | Actorfilter batch |
| kireibpm-actorfilter-user-manager | TODO | 19 | 0 | 2026-03-02 | Actorfilter batch |
| kireibpm-rest-api-extension-user-information-example | TODO | 19 | 0 | 2026-03-02 | Przykład rozszerzenia |
| kireibpm-connector-groovy | TODO | 18 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-slack | TODO | 18 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-ldap | TODO | 16 | 0 | 2026-03-02 | Connector batch |
| kireibpm-actorfilter-single-user | TODO | 14 | 0 | 2026-03-02 | Actorfilter batch |
| kireibpm-connector-sap | TODO | 13 | 0 | 2026-03-02 | Connector batch |
| kireibpm-connector-shell-script | TODO | 13 | 0 | 2026-03-02 | Connector batch |
| kireibpm-openapi | TODO | 6 | 0 | 2026-03-02 | Brak nowych refs |
| kireibpm-web-devtools | TODO | 6 | 0 | 2026-03-02 | Brak nowych refs |
| kireibpm-theme-archetype | TODO | 4 | 0 | 2026-03-02 | Archetype batch |
| kireibpm-data-repository | TODO | 1 | 0 | 2026-03-02 | Pojedyncza legacy referencja |
| kireibpm-action-release-connector | NO_SIGNAL | 0 | 0 | 2026-03-02 | Brak sygnału tekstowego |
| kireibpm-platform-releases | NO_SIGNAL | 0 | 0 | 2026-03-02 | Brak sygnału tekstowego |
| kireibpm-widget-builder | NO_SIGNAL | 0 | 0 | 2026-03-02 | Brak sygnału tekstowego |
| kireibpm-widget-contrib | NO_SIGNAL | 0 | 0 | 2026-03-02 | Brak sygnału tekstowego |

## Metodyka

- Dashboard jest oparty o skan tekstowy (`org\.bonitasoft|com\.bonitasoft` vs `org\.kireibpm|com\.kireibpm`).
- Liczniki obejmują także testy, docs i część artefaktów wygenerowanych; wynik traktować jako wskaźnik postępu.
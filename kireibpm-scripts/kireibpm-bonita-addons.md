# Bonitasoft add-ons do zmirrorowania (KireiBPM 1.0.0)

Poniżej jest zestaw repozytoriów Bonity (public), które pasują pod rozszerzenia / connectory / narzędzia oraz elementy „core / około-core”. Lista jest ograniczona do repo z jednoznaczną licencją wykrytą przez GitHub (SPDX).

**Założenia wersjonowania (zgodnie z wcześniejszymi ustaleniami)**
- W każdym repo skrypt utworzy gałąź `release/1.0.0` wskazującą na snapshot upstream (domyślnie HEAD gałęzi domyślnej upstream).
- Skrypt utworzy tag `kireibpm-1.0.0` wskazujący na ten sam commit.
- Skrypt ustawi domyślną gałąź repo na `release/1.0.0` (GitHub wykrywa licencję na podstawie default branch).

**Uwaga o licencjach**
- `GPL-2.0` / `GPL-3.0` i `LGPL-2.1` mają obowiązki przy dystrybucji modyfikacji.
- Licencja kodu nie jest równoznaczna z prawami do znaków towarowych / brandingu.

## Core / Around Core

| Upstream | Target (kireibpm) | Licencja | Default branch upstream | Opis (GitHub) |
|---|---|---:|---:|---|
| [bonita-java-client](https://github.com/bonitasoft/bonita-java-client) | [kireibpm-java-client](https://github.com/kireibpm/kireibpm-java-client) | GPL-2.0 | develop | A Java library to communicate with a Bonita Runtime using the HTTP API |
| [bonita-openapi](https://github.com/bonitasoft/bonita-openapi) | [kireibpm-openapi](https://github.com/kireibpm/kireibpm-openapi) | GPL-2.0 | master | This repository contains the Bonita OpenAPI specification |
| [bonita-platform-releases](https://github.com/bonitasoft/bonita-platform-releases) | [kireibpm-platform-releases](https://github.com/kireibpm/kireibpm-platform-releases) | GPL-2.0 | master | Official releases of the Bonita Platform |
| [bonita-process-model](https://github.com/bonitasoft/bonita-process-model) | [kireibpm-process-model](https://github.com/kireibpm/kireibpm-process-model) | GPL-2.0 | develop | Contains the Bonita Process Domain Logic used by Studio and related tools. |
| [bonita-project-maven-plugin](https://github.com/bonitasoft/bonita-project-maven-plugin) | [kireibpm-project-maven-plugin](https://github.com/kireibpm/kireibpm-project-maven-plugin) | GPL-2.0 | develop | — |
| [bonita-page-authorization-rules](https://github.com/bonitasoft/bonita-page-authorization-rules) | [kireibpm-page-authorization-rules](https://github.com/kireibpm/kireibpm-page-authorization-rules) | LGPL-2.1 | master | This project provides an example of page mapping authorization rule for bonita 7.3 and above |

## Archetypes (starter templates)

| Upstream | Target (kireibpm) | Licencja | Default branch upstream | Opis (GitHub) |
|---|---|---:|---:|---|
| [bonita-actorfilter-archetype](https://github.com/bonitasoft/bonita-actorfilter-archetype) | [kireibpm-actorfilter-archetype](https://github.com/kireibpm/kireibpm-actorfilter-archetype) | GPL-2.0 | master | This project contains a maven archetype which help creating a new Bonita actor filter project. |
| [bonita-connector-archetype](https://github.com/bonitasoft/bonita-connector-archetype) | [kireibpm-connector-archetype](https://github.com/kireibpm/kireibpm-connector-archetype) | GPL-2.0 | master | This project contains a maven archetype which help creating a new Bonita connector project. |
| [bonita-rest-api-extension-archetype](https://github.com/bonitasoft/bonita-rest-api-extension-archetype) | [kireibpm-rest-api-extension-archetype](https://github.com/kireibpm/kireibpm-rest-api-extension-archetype) | GPL-2.0 | master | This project contains a maven archetype which help creating a new Bonita Rest API extension project. |
| [bonita-theme-archetype](https://github.com/bonitasoft/bonita-theme-archetype) | [kireibpm-theme-archetype](https://github.com/kireibpm/kireibpm-theme-archetype) | GPL-2.0 | master | A Maven archetype to create Bonita theme project |

## Actor Filters (rozszerzenia przypisań)

| Upstream | Target (kireibpm) | Licencja | Default branch upstream | Opis (GitHub) |
|---|---|---:|---:|---|
| [bonita-userfilters](https://github.com/bonitasoft/bonita-userfilters) | [kireibpm-userfilters](https://github.com/kireibpm/kireibpm-userfilters) | GPL-2.0 | master | Bonita Actor Filters |
| [bonita-actorfilter-custom-user-info](https://github.com/bonitasoft/bonita-actorfilter-custom-user-info) | [kireibpm-actorfilter-custom-user-info](https://github.com/kireibpm/kireibpm-actorfilter-custom-user-info) | GPL-2.0 | master | Bonita actor filter that filter users of an actor based on their custom user information. |
| [bonita-actorfilter-initiator](https://github.com/bonitasoft/bonita-actorfilter-initiator) | [kireibpm-actorfilter-initiator](https://github.com/kireibpm/kireibpm-actorfilter-initiator) | GPL-2.0 | master | Filter users of an actor based on the process initiator |
| [bonita-actorfilter-initiator-manager](https://github.com/bonitasoft/bonita-actorfilter-initiator-manager) | [kireibpm-actorfilter-initiator-manager](https://github.com/kireibpm/kireibpm-actorfilter-initiator-manager) | GPL-2.0 | master | Bonita Actor Filter that filter users of an actor based on the manager of the process initiator |
| [bonita-actorfilter-same-task-user](https://github.com/bonitasoft/bonita-actorfilter-same-task-user) | [kireibpm-actorfilter-same-task-user](https://github.com/kireibpm/kireibpm-actorfilter-same-task-user) | GPL-2.0 | master | Bonita Actor Filter that filter users of an actor based on the user of a specific task. |
| [bonita-actorfilter-single-user](https://github.com/bonitasoft/bonita-actorfilter-single-user) | [kireibpm-actorfilter-single-user](https://github.com/kireibpm/kireibpm-actorfilter-single-user) | GPL-2.0 | master | — |
| [bonita-actorfilter-user-manager](https://github.com/bonitasoft/bonita-actorfilter-user-manager) | [kireibpm-actorfilter-user-manager](https://github.com/kireibpm/kireibpm-actorfilter-user-manager) | GPL-2.0 | master | Bonita Actor Filter that filter users of an actor based on the manager of the specified user. |

## Connectors

| Upstream | Target (kireibpm) | Licencja | Default branch upstream | Opis (GitHub) |
|---|---|---:|---:|---|
| [bonita-connector-ai](https://github.com/bonitasoft/bonita-connector-ai) | [kireibpm-connector-ai](https://github.com/kireibpm/kireibpm-connector-ai) | GPL-2.0 | develop | — |
| [bonita-connector-cmis](https://github.com/bonitasoft/bonita-connector-cmis) | [kireibpm-connector-cmis](https://github.com/kireibpm/kireibpm-connector-cmis) | GPL-2.0 | master | — |
| [bonita-connector-database](https://github.com/bonitasoft/bonita-connector-database) | [kireibpm-connector-database](https://github.com/kireibpm/kireibpm-connector-database) | GPL-2.0 | master | Enables interactions in your Bonita processes with various databases. |
| [bonita-connector-document-converter](https://github.com/bonitasoft/bonita-connector-document-converter) | [kireibpm-connector-document-converter](https://github.com/kireibpm/kireibpm-connector-document-converter) | GPL-2.0 | master | Bonita connector that convert Office document into PDF or HTML |
| [bonita-connector-document-templating](https://github.com/bonitasoft/bonita-connector-document-templating) | [kireibpm-connector-document-templating](https://github.com/kireibpm/kireibpm-connector-document-templating) | GPL-2.0 | master | Bonita connector for Office document templating |
| [bonita-connector-email](https://github.com/bonitasoft/bonita-connector-email) | [kireibpm-connector-email](https://github.com/kireibpm/kireibpm-connector-email) | GPL-2.0 | master | Enables interactions in your Bonita processes with mail servers. |
| [bonita-connector-googlecalendar-V3](https://github.com/bonitasoft/bonita-connector-googlecalendar-V3) | [kireibpm-connector-googlecalendar-V3](https://github.com/kireibpm/kireibpm-connector-googlecalendar-V3) | GPL-2.0 | master | Bonita connector for google calendar API v3 integration |
| [bonita-connector-groovy](https://github.com/bonitasoft/bonita-connector-groovy) | [kireibpm-connector-groovy](https://github.com/kireibpm/kireibpm-connector-groovy) | GPL-2.0 | master | Groovy connector for Bonita. Execute groovy scripts in a Bonita connector. |
| [bonita-connector-ldap](https://github.com/bonitasoft/bonita-connector-ldap) | [kireibpm-connector-ldap](https://github.com/kireibpm/kireibpm-connector-ldap) | GPL-2.0 | master | Bonita connector used for connecting to an LDAP server and retrieve external organization information to be used in a process. |
| [bonita-connector-rest](https://github.com/bonitasoft/bonita-connector-rest) | [kireibpm-connector-rest](https://github.com/kireibpm/kireibpm-connector-rest) | GPL-2.0 | master | Rest connector for Bonita |
| [bonita-connector-salesforce](https://github.com/bonitasoft/bonita-connector-salesforce) | [kireibpm-connector-salesforce](https://github.com/kireibpm/kireibpm-connector-salesforce) | GPL-2.0 | master | Bonita Salesforce connector |
| [bonita-connector-sap](https://github.com/bonitasoft/bonita-connector-sap) | [kireibpm-connector-sap](https://github.com/kireibpm/kireibpm-connector-sap) | GPL-2.0 | master | Bonita connector to interact with an SAP system |
| [bonita-connector-shell-script](https://github.com/bonitasoft/bonita-connector-shell-script) | [kireibpm-connector-shell-script](https://github.com/kireibpm/kireibpm-connector-shell-script) | GPL-2.0 | master | Connector used to execute shell scripts within a process |
| [bonita-connector-slack](https://github.com/bonitasoft/bonita-connector-slack) | [kireibpm-connector-slack](https://github.com/kireibpm/kireibpm-connector-slack) | GPL-2.0 | main | Enables interactions in your Bonita processes with Slack. |
| [bonita-connector-twitter](https://github.com/bonitasoft/bonita-connector-twitter) | [kireibpm-connector-twitter](https://github.com/kireibpm/kireibpm-connector-twitter) | GPL-2.0 | master | ⛔️DEPRECATED⛔️ Twitter connector for bonita |
| [bonita-connector-uipath](https://github.com/bonitasoft/bonita-connector-uipath) | [kireibpm-connector-uipath](https://github.com/kireibpm/kireibpm-connector-uipath) | GPL-2.0 | master | UIPath connector for Bonita |
| [bonita-connector-webservice](https://github.com/bonitasoft/bonita-connector-webservice) | [kireibpm-connector-webservice](https://github.com/kireibpm/kireibpm-connector-webservice) | GPL-2.0 | master | Enables interactions in your Bonita processes with a SOAP Webservices. |

## UI / Widgets / Devtools

| Upstream | Target (kireibpm) | Licencja | Default branch upstream | Opis (GitHub) |
|---|---|---:|---:|---|
| [bonita-web-devtools](https://github.com/bonitasoft/bonita-web-devtools) | [kireibpm-web-devtools](https://github.com/kireibpm/kireibpm-web-devtools) | GPL-2.0 | master | — |
| [bonita-widget-contrib](https://github.com/bonitasoft/bonita-widget-contrib) | [kireibpm-widget-contrib](https://github.com/kireibpm/kireibpm-widget-contrib) | GPL-2.0 | master | — |
| [widget-builder](https://github.com/bonitasoft/widget-builder) | [kireibpm-widget-builder](https://github.com/kireibpm/kireibpm-widget-builder) | GPL-2.0 | master | Utility to build widget for the UI Designer |

## Examples / tooling

| Upstream | Target (kireibpm) | Licencja | Default branch upstream | Opis (GitHub) |
|---|---|---:|---:|---|
| [rest-api-extension-user-information-example](https://github.com/bonitasoft/rest-api-extension-user-information-example) | [kireibpm-rest-api-extension-user-information-example](https://github.com/kireibpm/kireibpm-rest-api-extension-user-information-example) | GPL-2.0 | master | Bonita Subscription REST API extension example. |
| [action-release-connector](https://github.com/bonitasoft/action-release-connector) | [kireibpm-action-release-connector](https://github.com/kireibpm/kireibpm-action-release-connector) | MIT | main | — |

---

## Następny krok

- Skrypt mirrorujący te repo do organizacji `kireibpm` jest w pliku `kireibpm-bonita-addons-mirror.sh`.
- Uruchomienie: `./kireibpm-bonita-addons-mirror.sh`

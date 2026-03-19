# TODO: kireibpm-studio `expression.editor` bundle ID migration

Status: planned
Date: 2026-03-19
Repo: `kireibpm-studio`
Current validated package-namespace commit: `496059b29`

## Goal

Domknąć drugi etap migracji dla rodziny `expression.editor`: po zakończonej migracji pakietów Java przełączyć również identity pluginu z legacy `org.bonitasoft.studio.expression.editor` na `org.kireibpm.studio.expression.editor`.

## Current state

- Pakiety Java hosta i testów są już w `org.kireibpm.studio.expression.editor.*`.
- `Bundle-Activator` i `Export-Package` są już przełączone na nowy namespace.
- Host bundle nadal ma legacy identity:
  - `Bundle-SymbolicName: org.bonitasoft.studio.expression.editor`
  - `ExpressionEditorPlugin.PLUGIN_ID = "org.bonitasoft.studio.expression.editor"`
- Test fragment nadal hostuje legacy bundle ID:
  - `Fragment-Host: org.bonitasoft.studio.expression.editor`
- W reactorze nadal są konsumenci z `Require-Bundle` na stary bundle ID.

## Why this is a separate batch

To nie jest zwykły rename pakietów Java. Ten batch dotyczy identity PDE/OSGi, więc trzeba spójnie przełączyć:

- `Bundle-SymbolicName`
- `PLUGIN_ID`
- `Fragment-Host`
- `Require-Bundle` u konsumentów
- wpisy w `plugin.xml`, `fragment.e4xmi`, schematach `exsd`, `pom.xml`, reactorze i feature, jeśli odnoszą się do bundle ID lub extension-point identity

## Scope

### Host plugin

- `bundles/plugins/org.bonitasoft.studio.expression.editor/`
  - `META-INF/MANIFEST.MF`
  - `plugin.xml`
  - `fragment.e4xmi`
  - `schema/*.exsd`
  - `pom.xml`
  - `.project` if needed

### Test fragment

- `bundles/plugins/org.kireibpm.studio.expression.editor.tests/`
  - `META-INF/MANIFEST.MF`
  - `pom.xml` only if needed for artifact/bundle rename follow-up

### Reactor and feature metadata

- `bundles/plugins/pom.xml`
- feature files that include the host plugin
- any product/customization metadata referencing the old bundle ID

### Consumers to switch

At minimum review and migrate all `Require-Bundle` / direct bundle-ID references from:

- `org.bonitasoft.studio.businessobject`
- `org.bonitasoft.studio.data`
- `org.bonitasoft.studio.designer`
- `org.bonitasoft.studio.engine`
- `org.bonitasoft.studio.properties`
- `org.bonitasoft.studio.validation`
- `org.bonitasoft.studio.groovy.ui`
- `org.bonitasoft.studio.identity`
- `org.kireibpm.studio.connectors`
- `org.kireibpm.studio.connectors.model.edit`
- `org.kireibpm.studio.contract`
- `org.kireibpm.studio.datatools`
- `org.kireibpm.studio.decision.table`
- `org.kireibpm.studio.diagram.custom`
- `org.kireibpm.studio.document`
- `org.kireibpm.studio.exporter`
- `org.kireibpm.studio.importer`
- `org.kireibpm.studio.parameters`
- `org.kireibpm.studio.scripting`
- `org.kireibpm.studio.xml`
- test bundles such as `org.bonitasoft.studio.swtbot.framework` and `org.bonitasoft.studio.tests`

## Safe execution checklist

1. Audit all occurrences of `org.bonitasoft.studio.expression.editor` in tracked files.
2. Separate package refs from plugin/bundle identity refs.
3. Rename bundle identity only where the string means plugin ID / bundle symbolic name.
4. Update `ExpressionEditorPlugin.PLUGIN_ID` to the new bundle ID only in the same batch as `Bundle-SymbolicName`.
5. Update test fragment host and consumer manifests.
6. Review extension-point IDs carefully before changing them; keep them legacy unless there is a strong reason and a coordinated migration path.
7. Run the full studio gate.
8. Commit, push, and record the result in `history.md`.

## Validation command

```sh
cd /Users/u298389/kireibpm/kireibpm-org-clone/kireibpm-studio
JAVA_HOME=$(/usr/libexec/java_home -v 17) mvn -P 'default,it,!all-in-one' -DskipTests package
```

## Acceptance criteria

- No remaining tracked-file `Require-Bundle` or `Fragment-Host` references to `org.bonitasoft.studio.expression.editor`.
- Host plugin identity is consistently `org.kireibpm.studio.expression.editor`.
- `ExpressionEditorPlugin.PLUGIN_ID` matches the new host bundle ID.
- Full gate ends with `BUILD SUCCESS`.
- Result is recorded in `kireibpm-general/history.md`.

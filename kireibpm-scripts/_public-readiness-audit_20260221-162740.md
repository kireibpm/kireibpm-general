# Public readiness audit (Bonita/BonitaSoft references)
Generated: 2026-02-21 16:27:40
Root: `kireibpm-org-clone`

## How to read this
- This report is a technical scan for branding/metadata references (not legal advice).
- Keep copyright/license notices intact unless a lawyer tells you otherwise.
- High priority items before going public are usually README badges/links, SCM URLs, Maven coordinates, and any Bonita trademarks in product naming.

## kireibpm-action-release-connector
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 5

### bonitasoft_name (1)
- LICENSE:3: Copyright (c) 2022 bonitasoft

### bonita_name (4)
- README.md:7: Github actions to release Bonita connectors.
- README.md:9: Though, connectors definitions may still have a java.version property with value 11, to ensure compatibility with Bonita maintenance releases <= 9.0 (2023.2).
- action.yml:1: name: 'Release Bonita connector'
- action.yml:2: description: 'This action is used to create a new release for a Bonita connector (& actor filter). It first creates a changelog based on the commits of the release, then it creates a Github release, b…


## kireibpm-actorfilter-archetype
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 315

### bonitasoft_name (213)
- pom.xml:7: <groupId>org.bonitasoft.archetypes</groupId>
- pom.xml:14: <url>https://www.bonitasoft.com</url>
- pom.xml:18: <id>bonitasoft</id>
- pom.xml:19: <name>Bonitasoft</name>
- pom.xml:20: <email>rd.user@bonitasoft.com</email>
- pom.xml:21: <organization>Bonitasoft</organization>
- pom.xml:22: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:145: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-archetype.git</developerConnection>
- … (+205 more)

### bonita_name (61)
- pom.xml:12: <name>Bonita Actorfilter Archetype</name>
- pom.xml:13: <description>Maven archetype to bootstrap a Bonita actor filter project</description>
- README.md:6: # Bonita Actor filter Archetype
- README.md:8: This project contains a maven archetype, which allow to easily setup a Bonita actor filter project.
- README.md:12: ⚠️ **Java 11 is required for Bonita 7.13+**
- README.md:14: You can setup a Bonita actor filter project using the following command, from a terminal:
- README.md:34: - **bonitaVersion:** the targeted Bonita version
- README.md:46: A folder named _[your artifact id]_ is created, with your Bonita actor filter project, ready to use.
- … (+53 more)

### github_upstream (4)
- pom.xml:147: <url>https://github.com/bonitasoft/bonita-actorfilter-archetype</url>
- README.md:1: [![Actions Status](https://github.com/bonitasoft/bonita-actorfilter-archetype/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-archetype/actions?query=workflow%3ABuild)
- README.md:2: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-archetype?color=blue&label=Release&include_prereleases)](https://github.com/bonitasoft/bonita-actorfilter-arche…
- README.md:71: [![Actions Status](https://github.com/bonitasoft/bonita-actorfilter-archetype/workflows/Create%20release/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-archetype/actions?query=workflow%3…

### maven_groupid (18)
- pom.xml:7: <groupId>org.bonitasoft.archetypes</groupId>
- src/test/resources/projects/testActorfilterJava11Project/reference/pom.xml:46: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testActorfilterJava11Project/reference/pom.xml:59: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testActorFilterKotlinProject/reference/pom.xml:45: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testActorfilterGroovyProject/reference/pom.xml:50: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testActorfilterJavaProject/reference/pom.xml:47: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testActorFilterKotlinProject7_13/reference/pom.xml:44: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testActorFilterKotlinProject7_13/reference/pom.xml:57: <groupId>org.bonitasoft.engine</groupId>
- … (+10 more)

### bonita_artifact (18)
- pom.xml:8: <artifactId>bonita-actorfilter-archetype</artifactId>
- src/test/resources/projects/testActorfilterJava11Project/reference/pom.xml:47: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testActorfilterJava11Project/reference/pom.xml:58: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testActorFilterKotlinProject/reference/pom.xml:44: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testActorfilterGroovyProject/reference/pom.xml:49: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testActorfilterJavaProject/reference/pom.xml:46: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testActorFilterKotlinProject7_13/reference/pom.xml:45: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testActorFilterKotlinProject7_13/reference/pom.xml:56: <artifactId>bonita-common</artifactId>
- … (+10 more)

### scm_bonitasoft (1)
- pom.xml:145: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-archetype.git</developerConnection>


## kireibpm-actorfilter-custom-user-info
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 78

### bonitasoft_name (57)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:42: <impl-main-class>org.bonitasoft.actorfilter.custom.user.info.CustomUserInfoUserFilter</impl-main-class>
- … (+49 more)

### bonita_name (2)
- pom.xml:44: <!-- Bonita -->
- pom.xml:93: <!-- Bonita -->

### github_upstream (3)
- pom.xml:311: <url>https://github.com/bonitasoft/bonita-actorfilter-custom-user-info</url>
- README.md:3: [![Build](https://github.com/bonitasoft/bonita-actorfilter-custom-user-info/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-custom-user-info/actions?query=workflow%3ABuild…
- README.md:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-custom-user-info?color=blue&label=Release)](https://github.com/bonitasoft/bonita-actorfilter-custom-user-info/r…

### maven_groupid (3)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:96: <groupId>org.bonitasoft.engine</groupId>

### java_package (9)
- src/test/java/org/bonitasoft/actorfilter/custom/user/info/CustomUserInfoUserFilterTest.java:1: package org.bonitasoft.actorfilter.custom.user.info;
- src/test/java/org/bonitasoft/actorfilter/custom/user/info/UsersOfActorPageRetrieverTest.java:1: package org.bonitasoft.actorfilter.custom.user.info;
- src/test/java/org/bonitasoft/actorfilter/custom/user/info/PageAssemblerTest.java:1: package org.bonitasoft.actorfilter.custom.user.info;
- src/test/java/org/bonitasoft/actorfilter/custom/user/info/UsersWithCustomUserInfoPageRetrieverTest.java:1: package org.bonitasoft.actorfilter.custom.user.info;
- src/main/java/org/bonitasoft/actorfilter/custom/user/info/CustomUserInfoUserFilter.java:14: package org.bonitasoft.actorfilter.custom.user.info;
- src/main/java/org/bonitasoft/actorfilter/custom/user/info/PageAssembler.java:14: package org.bonitasoft.actorfilter.custom.user.info;
- src/main/java/org/bonitasoft/actorfilter/custom/user/info/UsersOfActorPageRetriever.java:14: package org.bonitasoft.actorfilter.custom.user.info;
- src/main/java/org/bonitasoft/actorfilter/custom/user/info/PageRetriever.java:14: package org.bonitasoft.actorfilter.custom.user.info;
- … (+1 more)

### bonita_artifact (3)
- pom.xml:6: <artifactId>bonita-actorfilter-custom-user-info</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:95: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:309: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-custom-user-info.git</developerConnection>


## kireibpm-actorfilter-initiator
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 63

### bonitasoft_name (42)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <impl-main-class>org.bonitasoft.actorfilter.initiator.ProcessInitiatorUserFilter</impl-main-class>
- … (+34 more)

### bonita_name (9)
- pom.xml:11: <description>Bonita Actor Filter that filter users of an actor based on the process initiator</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:93: <!-- Bonita -->
- CONTRIBUTING.md:45: ## Bonita actor filter development
- CONTRIBUTING.md:47: The readme contains details on the content of the generated project, and how it should be used to develop and build a Bonita actor filter. More details are available in the documentation: [https://doc…
- CONTRIBUTING.md:67: Pages and widgets to use the connector in the Bonita Studio.
- CONTRIBUTING.md:90: A definition includes _pages_ and _widgets_.  Those elements define the UI that will appear in the Bonita Studio to configure the actor filter.
- CONTRIBUTING.md:163: By importing this archive in a Bonita Studio you will import all the definitions and implementations created in the project
- … (+1 more)

### github_upstream (3)
- pom.xml:313: <url>https://github.com/bonitasoft/bonita-actorfilter-initiator</url>
- README.md:1: [![Build](https://github.com/bonitasoft/bonita-actorfilter-initiator/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-initiator/actions?query=workflow%3ABuild)
- README.md:3: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-initiator?color=blue&label=Release)](https://github.com/bonitasoft/bonita-actorfilter-initiator/releases)

### maven_groupid (3)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:96: <groupId>org.bonitasoft.engine</groupId>

### java_package (2)
- src/test/java/org/bonitasoft/actorfilter/initiator/ProcessInitiatorUserFilterTest.java:1: package org.bonitasoft.actorfilter.initiator;
- src/main/java/org/bonitasoft/actorfilter/initiator/ProcessInitiatorUserFilter.java:15: package org.bonitasoft.actorfilter.initiator;

### bonita_artifact (3)
- pom.xml:6: <artifactId>bonita-actorfilter-initiator</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:95: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:310: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-initiator.git


## kireibpm-actorfilter-initiator-manager
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 66

### bonitasoft_name (46)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <impl-main-class>org.bonitasoft.actorfilter.initiator.manager.ProcessInitiatorManagerUserFilter</impl-main-class>
- … (+38 more)

### bonita_name (8)
- pom.xml:11: <description>Bonita Actor Filter that filter users of an actor based on the manager of the process initiator</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:93: <!-- Bonita -->
- CONTRIBUTING.md:45: ## Bonita actor filter development
- CONTRIBUTING.md:47: The readme contains details on the content of the generated project, and how it should be used to develop and build a Bonita actor filter. More details are available in the documentation: [https://doc…
- CONTRIBUTING.md:67: Pages and widgets to use the connector in the Bonita Studio.
- CONTRIBUTING.md:90: A definition includes _pages_ and _widgets_.  Those elements define the UI that will appear in the Bonita Studio to configure the actor filter.
- CONTRIBUTING.md:163: By importing this archive in a Bonita Studio you will import all the definitions and implementations created in the project

### github_upstream (3)
- pom.xml:311: <url>https://github.com/bonitasoft/bonita-actorfilter-initiator-manager</url>
- README.md:1: [![Build](https://github.com/bonitasoft/bonita-actorfilter-initiator-manager/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-initiator-manager/actions?query=workflow%3ABui…
- README.md:3: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-initiator-manager?color=blue&label=Release)](https://github.com/bonitasoft/bonita-actorfilter-initiator-manager…

### maven_groupid (3)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:96: <groupId>org.bonitasoft.engine</groupId>

### java_package (2)
- src/test/java/org/bonitasoft/actorfilter/initiator/manager/ProcessInitiatorManagerUserFilterTest.java:1: package org.bonitasoft.actorfilter.initiator.manager;
- src/main/java/org/bonitasoft/actorfilter/initiator/manager/ProcessInitiatorManagerUserFilter.java:14: package org.bonitasoft.actorfilter.initiator.manager;

### bonita_artifact (3)
- pom.xml:6: <artifactId>bonita-actorfilter-initiator-manager</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:95: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:309: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-initiator-manager.git</developerConnection>


## kireibpm-actorfilter-same-task-user
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 74

### bonitasoft_name (52)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <impl-main-class>org.bonitasoft.actorfilter.identity.SameTaskUserActorFilter</impl-main-class>
- … (+44 more)

### bonita_name (10)
- pom.xml:11: <description>Bonita Actor Filter that filter users of an actor based on the user of a specific task</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:93: <!-- Bonita -->
- README.md:7: Bonita Actor Filter that filter users of an actor based on the user of a specific task.
- CONTRIBUTING.md:45: ## Bonita actor filter development
- CONTRIBUTING.md:47: The readme contains details on the content of the generated project, and how it should be used to develop and build a Bonita actor filter. More details are available in the documentation: [https://doc…
- CONTRIBUTING.md:67: Pages and widgets to use the connector in the Bonita Studio.
- CONTRIBUTING.md:90: A definition includes _pages_ and _widgets_.  Those elements define the UI that will appear in the Bonita Studio to configure the actor filter.
- … (+2 more)

### github_upstream (3)
- pom.xml:313: <url>https://github.com/bonitasoft/bonita-actorfilter-same-task-user</url>
- README.md:1: [![Build](https://github.com/bonitasoft/bonita-actorfilter-same-task-user/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-same-task-user/actions?query=workflow%3ABuild)
- README.md:3: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-same-task-user?color=blue&label=Release)](https://github.com/bonitasoft/bonita-actorfilter-same-task-user/relea…

### maven_groupid (3)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:96: <groupId>org.bonitasoft.engine</groupId>

### java_package (2)
- src/test/java/org/bonitasoft/actorfilter/identity/SameTaskUserActorFilterTest.java:15: package org.bonitasoft.actorfilter.identity;
- src/main/java/org/bonitasoft/actorfilter/identity/SameTaskUserActorFilter.java:1: package org.bonitasoft.actorfilter.identity;

### bonita_artifact (3)
- pom.xml:6: <artifactId>bonita-actorfilter-same-task-user</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:95: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:310: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-same-task-user.git


## kireibpm-actorfilter-single-user
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 57

### bonitasoft_name (35)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <impl-main-class>org.bonitasoft.actorfilter.identity.SingleUserActorFilter</impl-main-class>
- … (+27 more)

### bonita_name (10)
- pom.xml:11: <description>Bonita Actor Filter that filter users of an actor based on a single user Id</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:93: <!-- Bonita -->
- README.md:7: Bonita Actor Filter that filter users of an actor based on a single user Id.
- CONTRIBUTING.md:45: ## Bonita actor filter development
- CONTRIBUTING.md:47: The readme contains details on the content of the generated project, and how it should be used to develop and build a Bonita actor filter. More details are available in the documentation: [https://doc…
- CONTRIBUTING.md:67: Pages and widgets to use the connector in the Bonita Studio.
- CONTRIBUTING.md:90: A definition includes _pages_ and _widgets_.  Those elements define the UI that will appear in the Bonita Studio to configure the actor filter.
- … (+2 more)

### github_upstream (3)
- pom.xml:312: <url>https://github.com/bonitasoft/bonita-actorfilter-single-user</url>
- README.md:1: [![Build](https://github.com/bonitasoft/bonita-actorfilter-single-user/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-single-user/actions?query=workflow%3ABuild)
- README.md:3: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-single-user?color=blue&label=Release)](https://github.com/bonitasoft/bonita-actorfilter-single-user/releases)

### maven_groupid (3)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:96: <groupId>org.bonitasoft.engine</groupId>

### java_package (2)
- src/test/java/org/bonitasoft/actorfilter/identity/SingleUserActorFilterTest.java:1: package org.bonitasoft.actorfilter.identity;
- src/main/java/org/bonitasoft/actorfilter/identity/SingleUserActorFilter.java:1: package org.bonitasoft.actorfilter.identity;

### bonita_artifact (3)
- pom.xml:6: <artifactId>bonita-actorfilter-single-user</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:95: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:310: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-single-user.git</developerConnection>


## kireibpm-actorfilter-user-manager
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 61

### bonitasoft_name (40)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <impl-main-class>org.bonitasoft.actorfilter.identity.UserManagerActorFilter</impl-main-class>
- … (+32 more)

### bonita_name (9)
- pom.xml:11: <description>Bonita Actor Filter that filter users of an actor based on the manager of the specified user</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:93: <!-- Bonita -->
- README.md:7: Bonita Actor Filter that filter users of an actor based on the manager of the specified user.
- CONTRIBUTING.md:45: ## Bonita actor filter development
- CONTRIBUTING.md:47: The readme contains details on the content of the generated project, and how it should be used to develop and build a Bonita actor filter. More details are available in the documentation: [https://doc…
- CONTRIBUTING.md:67: Pages and widgets to use the connector in the Bonita Studio.
- CONTRIBUTING.md:90: A definition includes _pages_ and _widgets_.  Those elements define the UI that will appear in the Bonita Studio to configure the actor filter.
- … (+1 more)

### github_upstream (3)
- pom.xml:312: <url>https://github.com/bonitasoft/bonita-actorfilter-user-manager</url>
- README.md:1: [![Build](https://github.com/bonitasoft/bonita-actorfilter-user-manager/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-actorfilter-user-manager/actions?query=workflow%3ABuild)
- README.md:3: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-actorfilter-user-manager?color=blue&label=Release)](https://github.com/bonitasoft/bonita-actorfilter-user-manager/releases)

### maven_groupid (3)
- pom.xml:5: <groupId>org.bonitasoft.actorfilter</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:96: <groupId>org.bonitasoft.engine</groupId>

### java_package (2)
- src/test/java/org/bonitasoft/actorfilter/identity/UserManagerActorFilterTest.java:1: package org.bonitasoft.actorfilter.identity;
- src/main/java/org/bonitasoft/actorfilter/identity/UserManagerActorFilter.java:1: package org.bonitasoft.actorfilter.identity;

### bonita_artifact (3)
- pom.xml:6: <artifactId>bonita-actorfilter-user-manager</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:95: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:309: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-actorfilter-user-manager.git


## kireibpm-admin-application
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 135

### bonitasoft_name (77)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:8: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:14: <groupId>com.bonitasoft.web.application</groupId>
- subscription/pom.xml:23: <name>Bonitasoft Software License</name>
- subscription/pom.xml:24: <url>http://www.bonitasoft.com</url>
- subscription/pom.xml:34: <groupId>com.bonitasoft.web.page</groupId>
- subscription/pom.xml:40: <groupId>com.bonitasoft.web.page</groupId>
- subscription/pom.xml:46: <groupId>org.bonitasoft.web.page</groupId>
- … (+69 more)

### bonita_name (15)
- pom.xml:11: <name>Bonita Admin Applications</name>
- README.md:1: # Bonita Admin Application
- README.md:3: This repository aggregates all the development and distribution artifacts of the Bonita Admin Application
- README.md:7: * `src/main/resources/bos-distrib` contains the .bos version of the app descriptor. In this version, the UID pages tokens contain the version of the page because the UID pages are rebuilt by Bonita St…
- README.md:14: To build the Admin application for the community edition of Bonita, run `./mvnw clean verify -pl :bonita-admin-application -am` in a terminal.
- README.md:23: * a .bos archive to import in Bonita Studio
- README.md:29: * An application descriptor for the Bonita Admin Application
- README.md:30: * The Bonita layout as a development artifact
- … (+7 more)

### github_upstream (1)
- community/pom.xml:35: <url>https://github.com/bonitasoft/bonita-admin-application</url>

### maven_groupid (37)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:8: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:46: <groupId>org.bonitasoft.web.page</groupId>
- subscription/pom.xml:52: <groupId>org.bonitasoft.web.page</groupId>
- community/pom.xml:7: <groupId>org.bonitasoft.web.application</groupId>
- community/pom.xml:60: <groupId>org.bonitasoft.web.page</groupId>
- community/pom.xml:66: <groupId>org.bonitasoft.web.page</groupId>
- community/pom.xml:72: <groupId>org.bonitasoft.web.page</groupId>
- … (+29 more)

### bonita_artifact (4)
- pom.xml:7: <artifactId>bonita-admin-application-parent</artifactId>
- subscription/pom.xml:9: <artifactId>bonita-admin-application</artifactId>
- subscription/pom.xml:15: <artifactId>bonita-admin-application-sp</artifactId>
- community/pom.xml:8: <artifactId>bonita-admin-application</artifactId>

### scm_bonitasoft (1)
- community/pom.xml:34: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-admin-application.git</developerConnection>


## kireibpm-application-directory
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 66

### bonitasoft_name (41)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- pom.xml:16: <url>https://www.bonitasoft.com</url>
- pom.xml:25: <id>bonitasoft</id>
- pom.xml:26: <name>Bonitasoft</name>
- pom.xml:27: <email>rd.user@bonitasoft.com</email>
- pom.xml:28: <organization>Bonitasoft</organization>
- pom.xml:29: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:33: <connection>scm:git:git@github.com:bonitasoft/bonita-application-directory.git</connection>
- … (+33 more)

### bonita_name (7)
- pom.xml:11: <name>Bonita Application Directory</name>
- README.md:1: # Bonita Application Directory
- README.md:3: This repository aggregates all the development artifacts of Bonita Application Directory
- README.md:11: * An application descriptor for Bonita Application Directory app (`applications/bonita-application-directory.xml`)
- README.md:17: In addition to development pages, you may also customize the default Bonita theme just by creating a new Theme in the Studio.
- README.md:18: By the default the Bonita theme is used as starting point, so you just have to update the theme id in the application descriptor with your custom theme id.
- .github/workflows/_reusable_build.yml:13: description: To publish the project artifacts on Bonita Artifact Repository.

### github_upstream (1)
- pom.xml:35: <url>https://github.com/bonitasoft/bonita-application-directory</url>

### maven_groupid (15)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- pom.xml:58: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:64: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:70: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:76: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:82: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:88: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:166: <groupId>org.bonitasoft.web.page</groupId>
- … (+7 more)

### bonita_artifact (1)
- pom.xml:7: <artifactId>bonita-application-directory</artifactId>

### scm_bonitasoft (1)
- pom.xml:34: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-application-directory.git</developerConnection>


## kireibpm-connector-ai
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 557

### bonitasoft_name (406)
- pom.xml:4: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:10: <url>https://www.bonitasoft.com</url>
- pom.xml:13: <name>Bonitasoft</name>
- pom.xml:14: <url>https://www.bonitasoft.com</url>
- pom.xml:24: <id>bonitasoft</id>
- pom.xml:25: <name>Bonitasoft</name>
- pom.xml:26: <email>rd.user@bonitasoft.com</email>
- pom.xml:27: <organization>Bonitasoft</organization>
- … (+398 more)

### bonita_name (48)
- pom.xml:8: <name>Bonita AI Connectors</name>
- pom.xml:9: <description>Parent pom for Bonita AI Connectors</description>
- pom.xml:58: <!-- Bonita -->
- pom.xml:102: <!-- Bonita -->
- pom.xml:118: <!--Force provided scope to avoid conflict with Bonita -->
- README.adoc:40: The Bonita AI Connectors are available for **Bonita {short-bonita-version} Community ({year-bonita-version})** version and above.
- README.adoc:50: To use a connector, add it as a dependency to your Bonita process. Choose the one related to your AI provider.
- README.adoc:466: {doc-url}/bonita-overview/managing-extension-studio[Install the connector in your Bonita project using the Studio, window = "_blank"].
- … (+40 more)

### github_upstream (5)
- pom.xml:41: <url>https://github.com/bonitasoft/bonita-connector-ai</url>
- pom.xml:49: <url>https://github.com/bonitasoft/bonita-connector-ai/actions</url>
- README.adoc:472: * Running the https://github.com/bonitasoft/bonita-connector-ai/actions/workflows/release.yaml[Release workflow] will invoke the `gitflow-maven-plugin` to perform all required merges, version updates …
- README.adoc:473: * Run the https://github.com/bonitasoft/bonita-connector-ai/actions/workflows/publish.yaml[Publication workflow]  action will build and deploy a given tag to Maven Central.
- README.adoc:476: Once this is done, update the https://github.com/bonitasoft/bonita-marketplace[Bonita marketplace repository] with the new version of the connector.

### maven_groupid (16)
- pom.xml:4: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:86: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:104: <groupId>org.bonitasoft.engine</groupId>
- README.adoc:63: <groupId>org.bonitasoft.connectors</groupId>
- README.adoc:74: <groupId>org.bonitasoft.connectors</groupId>
- README.adoc:85: <groupId>org.bonitasoft.connectors</groupId>
- bonita-connector-ai-core/pom.xml:5: <groupId>org.bonitasoft.connectors</groupId>
- bonita-connector-ai-mistral/pom.xml:5: <groupId>org.bonitasoft.connectors</groupId>
- … (+8 more)

### java_package (60)
- bonita-connector-ai-core/src/test/java/org/bonitasoft/connectors/utils/AiResponseTest.java:17: package org.bonitasoft.connectors.utils;
- bonita-connector-ai-core/src/test/java/org/bonitasoft/connectors/ai/AiConnectorTest.java:17: package org.bonitasoft.connectors.ai;
- bonita-connector-ai-core/src/test/java/org/bonitasoft/connectors/ai/classify/ClassifyChatIT.java:17: package org.bonitasoft.connectors.ai.classify;
- bonita-connector-ai-core/src/test/java/org/bonitasoft/connectors/ai/ask/AskChatIT.java:17: package org.bonitasoft.connectors.ai.ask;
- bonita-connector-ai-core/src/test/java/org/bonitasoft/connectors/ai/extract/ExtractChatIT.java:17: package org.bonitasoft.connectors.ai.extract;
- bonita-connector-ai-core/src/main/java/org/bonitasoft/connectors/utils/AiResponse.java:17: package org.bonitasoft.connectors.utils;
- bonita-connector-ai-core/src/main/java/org/bonitasoft/connectors/utils/IOs.java:17: package org.bonitasoft.connectors.utils;
- bonita-connector-ai-core/src/main/java/org/bonitasoft/connectors/ai/AiConfiguration.java:17: package org.bonitasoft.connectors.ai;
- … (+52 more)

### bonita_artifact (20)
- pom.xml:5: <artifactId>bonita-connector-ai</artifactId>
- pom.xml:87: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:105: <artifactId>bonita-common</artifactId>
- README.adoc:64: <artifactId>bonita-connector-ai-openai</artifactId>
- README.adoc:75: <artifactId>bonita-connector-ai-mistral</artifactId>
- README.adoc:86: <artifactId>bonita-connector-ai-ollama</artifactId>
- bonita-connector-ai-core/pom.xml:6: <artifactId>bonita-connector-ai</artifactId>
- bonita-connector-ai-core/pom.xml:9: <artifactId>bonita-connector-ai-core</artifactId>
- … (+12 more)

### scm_bonitasoft (1)
- pom.xml:39: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-ai.git</developerConnection>

### marketplace (1)
- README.adoc:476: Once this is done, update the https://github.com/bonitasoft/bonita-marketplace[Bonita marketplace repository] with the new version of the connector.


## kireibpm-connector-archetype
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 247

### bonitasoft_name (144)
- pom.xml:5: <groupId>org.bonitasoft.archetypes</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:143: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-archetype.git</developerConnection>
- … (+136 more)

### bonita_name (62)
- pom.xml:10: <name>Bonita Connector Archetype</name>
- pom.xml:11: <description>Maven archetype to bootstrap a Bonita connector project</description>
- README.md:8: ## Bonita Connector Archetype
- README.md:10: This project contains a maven archetype, which allow to easily setup a Bonita connector project.
- README.md:15: ⚠️ **Java 11 is required for Bonita 7.13+**
- README.md:17: You can setup a Bonita connector project using the following command, from a terminal:
- README.md:36: - **bonitaVersion:** the targeted Bonita version
- README.md:48: A folder named _[your artifact id]_ is created, with your Bonita connector project, ready to use.
- … (+54 more)

### github_upstream (4)
- pom.xml:145: <url>https://github.com/bonitasoft/bonita-connector-archetype</url>
- README.md:1: [![Actions Status](https://github.com/bonitasoft/bonita-connector-archetype/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-archetype/actions?query=workflow%3ABuild)
- README.md:2: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-archetype?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-archetype/releases)
- README.md:73: [![Actions Status](https://github.com/bonitasoft/bonita-connector-archetype/workflows/Create%20release/badge.svg)](https://github.com/bonitasoft/bonita-connector-archetype/actions?query=workflow%3A"Cr…

### maven_groupid (18)
- pom.xml:5: <groupId>org.bonitasoft.archetypes</groupId>
- src/test/resources/projects/testGroovyProject10/reference/pom.xml:48: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testGroovyProject10/reference/pom.xml:61: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:47: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:60: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testJavaProject10/reference/pom.xml:47: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testJavaProject10/reference/pom.xml:60: <groupId>org.bonitasoft.engine</groupId>
- src/test/resources/projects/testKotlinProject/reference/pom.xml:48: <groupId>org.bonitasoft.engine</groupId>
- … (+10 more)

### bonita_artifact (18)
- pom.xml:6: <artifactId>bonita-connector-archetype</artifactId>
- src/test/resources/projects/testGroovyProject10/reference/pom.xml:49: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testGroovyProject10/reference/pom.xml:60: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:48: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:59: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testJavaProject10/reference/pom.xml:48: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testJavaProject10/reference/pom.xml:59: <artifactId>bonita-common</artifactId>
- src/test/resources/projects/testKotlinProject/reference/pom.xml:47: <artifactId>bonita-common</artifactId>
- … (+10 more)

### scm_bonitasoft (1)
- pom.xml:143: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-archetype.git</developerConnection>


## kireibpm-connector-cmis
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 174

### bonitasoft_name (143)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:46: <cmis-createfolder.main-class>org.bonitasoft.connectors.cmis.CreateFolder</cmis-createfolder.main-class>
- … (+135 more)

### bonita_name (4)
- pom.xml:11: <name>Bonita CMIS Connector</name>
- pom.xml:12: <description>CMIS Connectors for Bonita</description>
- README.MD:9: Enables interactions in your Bonita processes with a CMIS compatible CMS.
- README.MD:38: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (5)
- pom.xml:430: <url>https://github.com/bonitasoft/bonita-connector-cmis</url>
- README.MD:3: [![Build](https://github.com/bonitasoft/bonita-connector-cmis/actions/workflows/build.yml/badge.svg)](https://github.com/bonitasoft/bonita-connector-cmis/actions/workflows/build.yml)
- README.MD:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-cmis?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-cmis/releases)
- README.MD:34: - Run the [release workflow](https://github.com/bonitasoft/bonita-connector-cmis/actions/workflows/release.yml), set the version to release as parameter
- README.MD:38: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (2)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:130: <groupId>org.bonitasoft.engine</groupId>

### java_package (16)
- src/test/java/org/bonitasoft/connectors/cmis/UploadNewDocumentsTest.java:18: package org.bonitasoft.connectors.cmis;
- src/test/java/org/bonitasoft/connectors/cmis/cmisclient/CMISParametersValidatorTest.java:18: package org.bonitasoft.connectors.cmis.cmisclient;
- src/main/java/org/bonitasoft/connectors/cmis/UploadNewVersionOfDocument.java:18: package org.bonitasoft.connectors.cmis;
- src/main/java/org/bonitasoft/connectors/cmis/ListDocuments.java:18: package org.bonitasoft.connectors.cmis;
- src/main/java/org/bonitasoft/connectors/cmis/DeleteDocument.java:18: package org.bonitasoft.connectors.cmis;
- src/main/java/org/bonitasoft/connectors/cmis/UploadNewDocument.java:18: package org.bonitasoft.connectors.cmis;
- src/main/java/org/bonitasoft/connectors/cmis/AbstractCMISConnector.java:18: package org.bonitasoft.connectors.cmis;
- src/main/java/org/bonitasoft/connectors/cmis/DownloadDocument.java:18: package org.bonitasoft.connectors.cmis;
- … (+8 more)

### bonita_artifact (2)
- pom.xml:8: <artifactId>bonita-connector-cmis</artifactId>
- pom.xml:129: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:428: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-cmis.git</developerConnection>

### marketplace (1)
- README.MD:38: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-database
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 112

### bonitasoft_name (89)
- pom.xml:4: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:10: <url>https://www.bonitasoft.com</url>
- pom.xml:14: <id>bonitasoft</id>
- pom.xml:15: <name>Bonitasoft</name>
- pom.xml:16: <email>rd.user@bonitasoft.com</email>
- pom.xml:17: <organization>Bonitasoft</organization>
- pom.xml:18: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:44: <jdbc-generic.main-class>org.bonitasoft.connectors.database.jdbc.JdbcConnector</jdbc-generic.main-class>
- … (+81 more)

### bonita_name (6)
- pom.xml:9: <description>Database connector for Bonita</description>
- pom.xml:36: <!-- Bonita -->
- README.md:8: JDBC and Datasource database connectors for Bonita
- README.md:23: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- src/test/java/org/bonitasoft/connectors/database/datasource/DatasourceConnectorTest.java:325: (Object) "SELECT * FROM Bonita"));
- src/test/java/org/bonitasoft/connectors/database/jdbc/JdbcConnectorTest.java:179: Collections.singletonMap(JdbcConnector.SCRIPT, (Object) "SELECT * FROM Bonita"));

### github_upstream (5)
- pom.xml:412: <url>https://github.com/bonitasoft/bonita-connector-database</url>
- README.md:2: ![](https://github.com/bonitasoft/bonita-connector-database/workflows/Build/badge.svg)
- README.md:4: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-database?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-database/releases)
- README.md:20: - Run the [release](https://github.com/bonitasoft/bonita-connector-database/actions/workflows/release.yml) action, set the version to release as parameter
- README.md:23: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (2)
- pom.xml:4: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:158: <groupId>org.bonitasoft.engine</groupId>

### java_package (6)
- src/test/java/org/bonitasoft/connectors/database/datasource/DatasourceConnectorTest.java:18: package org.bonitasoft.connectors.database.datasource;
- src/test/java/org/bonitasoft/connectors/database/datasource/TypeDatabaseEnum.java:18: package org.bonitasoft.connectors.database.datasource;
- src/test/java/org/bonitasoft/connectors/database/jdbc/JdbcConnectorTest.java:18: package org.bonitasoft.connectors.database.jdbc;
- src/main/java/org/bonitasoft/connectors/database/Database.java:18: package org.bonitasoft.connectors.database;
- src/main/java/org/bonitasoft/connectors/database/datasource/DatasourceConnector.java:18: package org.bonitasoft.connectors.database.datasource;
- src/main/java/org/bonitasoft/connectors/database/jdbc/JdbcConnector.java:18: package org.bonitasoft.connectors.database.jdbc;

### bonita_artifact (2)
- pom.xml:5: <artifactId>bonita-connector-database</artifactId>
- pom.xml:157: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:410: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-database.git</developerConnection>

### marketplace (1)
- README.md:23: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-document-converter
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 154

### bonitasoft_name (115)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <document-converter.main-class>org.bonitasoft.connectors.document.converter.DocumentConverterConnector</document-converter.main-class>
- … (+107 more)

### bonita_name (6)
- pom.xml:11: <description>Office document converter connector for Bonita</description>
- pom.xml:45: <!-- Bonita -->
- README.md:8: Bonita connector converting office document (in formats docx and odt) to pdf/html format
- README.md:12: ## Bonita compatibility
- README.md:14: [v2.3.0](https://github.com/bonitasoft/bonita-connector-document-converter/releases/2.3.0) is compatible with Bonita version 7.11.x and above
- README.md:29: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (8)
- pom.xml:402: <developerConnection>scm:git:git@github.com/bonitasoft/bonita-connector-document-converter.git</developerConnection>
- pom.xml:403: <connection>scm:git:git@github.com/bonitasoft/bonita-connector-document-converter.git</connection>
- pom.xml:404: <url>https://github.com/bonitasoft/bonita-connector-document-converter</url>
- README.md:2: ![](https://github.com/bonitasoft/bonita-connector-document-converter/workflows/Build/badge.svg)
- README.md:4: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-document-converter?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-document-converter/r…
- README.md:14: [v2.3.0](https://github.com/bonitasoft/bonita-connector-document-converter/releases/2.3.0) is compatible with Bonita version 7.11.x and above
- README.md:26: - Run the [Release workflow](https://github.com/bonitasoft/bonita-connector-document-converter/actions/workflows/release.yml), set the version to release as parameter
- README.md:29: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (3)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:90: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:121: <groupId>org.bonitasoft.engine</groupId>

### java_package (16)
- src/test/java/org/bonitasoft/connectors/document/converter/DocumentConverterFactoryTest.java:9: package org.bonitasoft.connectors.document.converter;
- src/test/java/org/bonitasoft/connectors/document/converter/InputParametersValidatorTest.java:9: package org.bonitasoft.connectors.document.converter;
- src/test/java/org/bonitasoft/connectors/document/converter/DocToPDFConverterTest.java:9: package org.bonitasoft.connectors.document.converter;
- src/test/java/org/bonitasoft/connectors/document/converter/FilenameUtilTest.java:9: package org.bonitasoft.connectors.document.converter;
- src/test/java/org/bonitasoft/connectors/document/converter/DocumentConverterConnectorTest.java:9: package org.bonitasoft.connectors.document.converter;
- src/test/java/org/bonitasoft/connectors/document/converter/MimeTypeUtilTest.java:9: package org.bonitasoft.connectors.document.converter;
- src/test/java/org/bonitasoft/connectors/document/converter/core/DocToHTMLConverterTest.java:9: package org.bonitasoft.connectors.document.converter.core;
- src/main/java/org/bonitasoft/connectors/document/converter/DocumentConverterConnector.java:17: package org.bonitasoft.connectors.document.converter;
- … (+8 more)

### bonita_artifact (3)
- pom.xml:7: <artifactId>bonita-connector-document-converter</artifactId>
- pom.xml:91: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:122: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (2)
- pom.xml:402: <developerConnection>scm:git:git@github.com/bonitasoft/bonita-connector-document-converter.git</developerConnection>
- pom.xml:403: <connection>scm:git:git@github.com/bonitasoft/bonita-connector-document-converter.git</connection>

### marketplace (1)
- README.md:29: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-document-templating
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 80

### bonitasoft_name (54)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:45: <document-templating.main-class>org.bonitasoft.connectors.document.templating.DocumentTemplating</document-templating.main-class>
- … (+46 more)

### bonita_name (5)
- pom.xml:12: <description>Office document templating connector for Bonita</description>
- pom.xml:47: <!-- Bonita -->
- README.md:10: ## Bonita compatibility
- README.md:12: [v2.3.0](https://github.com/bonitasoft/bonita-connector-document-templating/releases/2.3.0) is compatible with Bonita version 7.11.x and above
- README.md:27: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (8)
- pom.xml:401: <developerConnection>scm:git:git@github.com/bonitasoft/bonita-connector-document-templating.git</developerConnection>
- pom.xml:402: <connection>scm:git:git@github.com/bonitasoft/bonita-connector-document-templating.git</connection>
- pom.xml:403: <url>https://github.com/bonitasoft/bonita-connector-document-templating.git</url>
- README.md:2: ![](https://github.com/bonitasoft/bonita-connector-document-templating/workflows/Build/badge.svg)
- README.md:4: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-document-templating?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-document-templating…
- README.md:12: [v2.3.0](https://github.com/bonitasoft/bonita-connector-document-templating/releases/2.3.0) is compatible with Bonita version 7.11.x and above
- README.md:24: - Run the [action 'Create release'](https://github.com/bonitasoft/bonita-connector-document-templating/actions/workflows/release.yml), set the version to release as parameter
- README.md:27: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (3)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:92: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:123: <groupId>org.bonitasoft.engine</groupId>

### java_package (4)
- src/test/java/org/bonitasoft/connectors/document/templating/DocumentTemplatingTest.java:15: package org.bonitasoft.connectors.document.templating;
- src/test/java/org/bonitasoft/connectors/document/templating/ZipUtilTest.java:15: package org.bonitasoft.connectors.document.templating;
- src/main/java/org/bonitasoft/connectors/document/templating/ZipUtil.java:15: package org.bonitasoft.connectors.document.templating;
- src/main/java/org/bonitasoft/connectors/document/templating/DocumentTemplating.java:17: package org.bonitasoft.connectors.document.templating;

### bonita_artifact (3)
- pom.xml:8: <artifactId>bonita-connector-document-templating</artifactId>
- pom.xml:93: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:124: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (2)
- pom.xml:401: <developerConnection>scm:git:git@github.com/bonitasoft/bonita-connector-document-templating.git</developerConnection>
- pom.xml:402: <connection>scm:git:git@github.com/bonitasoft/bonita-connector-document-templating.git</connection>

### marketplace (1)
- README.md:27: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-email
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 217

### bonitasoft_name (160)
- XOAUTH2_TESTING.md:241: - [Bonita Connector Development](https://documentation.bonitasoft.com/bonita/latest/software-extensibility/connectors)
- pom.xml:4: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:10: <url>https://www.bonitasoft.com</url>
- pom.xml:14: <id>bonitasoft</id>
- pom.xml:15: <name>Bonitasoft</name>
- pom.xml:16: <email>rd.user@bonitasoft.com</email>
- pom.xml:17: <organization>Bonitasoft</organization>
- pom.xml:18: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- … (+152 more)

### bonita_name (27)
- XOAUTH2_TESTING.md:3: This guide explains how to test the XOAUTH2 authentication feature of the Bonita Email Connector.
- XOAUTH2_TESTING.md:87: The recipient should receive an email with subject "XOAUTH2 Test from Bonita Connector".
- XOAUTH2_TESTING.md:201: 1. **Store refresh tokens securely** in Bonita's credential storage
- XOAUTH2_TESTING.md:210: Your Bonita process should include a service task that:
- XOAUTH2_TESTING.md:231: 2. **Store tokens securely** - Use Bonita's credential storage or a secrets manager
- XOAUTH2_TESTING.md:241: - [Bonita Connector Development](https://documentation.bonitasoft.com/bonita/latest/software-extensibility/connectors)
- pom.xml:8: <name>Bonita Email Connector</name>
- pom.xml:9: <description>Email Connector for Bonita</description>
- … (+19 more)

### github_upstream (5)
- pom.xml:510: <url>https://github.com/bonitasoft/bonita-connector-email</url>
- README.md:3: [![Build](https://github.com/bonitasoft/bonita-connector-email/actions/workflows/build.yml/badge.svg)](https://github.com/bonitasoft/bonita-connector-email/actions/workflows/build.yml)
- README.md:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-email?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-email/releases)
- README.md:19: - Run the [release](https://github.com/bonitasoft/bonita-connector-email/actions/workflows/release.yml) action from the release branch, set the version to release as parameter
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (4)
- pom.xml:4: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:88: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:108: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:178: <groupId>org.bonitasoft.web</groupId>

### java_package (15)
- src/test/java/org/bonitasoft/connectors/test/BonitaContainer.java:18: package org.bonitasoft.connectors.test;
- src/test/java/org/bonitasoft/connectors/test/ConnectorExecutor.java:18: package org.bonitasoft.connectors.test;
- src/test/java/org/bonitasoft/connectors/test/ConfigurationBuilder.java:18: package org.bonitasoft.connectors.test;
- src/test/java/org/bonitasoft/connectors/test/Configuration.java:18: package org.bonitasoft.connectors.test;
- src/test/java/org/bonitasoft/connectors/test/impl/ConnectorExecutorImpl.java:18: package org.bonitasoft.connectors.test.impl;
- src/test/java/org/bonitasoft/connectors/test/junit/BonitaConnectorTestExtension.java:18: package org.bonitasoft.connectors.test.junit;
- src/test/java/org/bonitasoft/connectors/test/annotation/BonitaConnectorTest.java:18: package org.bonitasoft.connectors.test.annotation;
- src/test/java/org/bonitasoft/connectors/email/EmailConnectorTest.java:18: package org.bonitasoft.connectors.email;
- … (+7 more)

### bonita_artifact (4)
- pom.xml:5: <artifactId>bonita-connector-email</artifactId>
- pom.xml:89: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:107: <artifactId>bonita-common</artifactId>
- pom.xml:179: <artifactId>bonita-java-client</artifactId>

### scm_bonitasoft (1)
- pom.xml:508: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-email.git</developerConnection>

### marketplace (1)
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-googlecalendar-V3
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 135

### bonitasoft_name (104)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <google-calendar-v3-create-event.main-class>org.bonitasoft.connectors.google.calendar.CreateEventConnector</google-calendar-v3-create-event.main-class>
- … (+96 more)

### bonita_name (5)
- pom.xml:11: <description>Google Calendar v3 for Bonita</description>
- pom.xml:69: <!-- Bonita -->
- README.md:1: # Bonita Google Calendar Connetor (API V3)
- README.md:8: This is the implementation of the Bonita Google Calendar based on the Google API V3.
- README.md:61: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (5)
- pom.xml:402: <url>https://github.com/bonitasoft/bonita-connector-googlecalendar-V3</url>
- README.md:2: ![](https://github.com/bonitasoft/bonita-connector-googlecalendar-V3/workflows/Build/badge.svg)
- README.md:4: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-googlecalendar-v3?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-googlecalendar-V3/rel…
- README.md:58: - Run the [Create release workflow](https://github.com/bonitasoft/bonita-connector-googlecalendar-V3/actions/workflows/release.yml), set the version to release as parameter
- README.md:61: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (2)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:106: <groupId>org.bonitasoft.engine</groupId>

### java_package (15)
- src/test/java/org/bonitasoft/connectors/google/calendar/CreateEventConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar;
- src/test/java/org/bonitasoft/connectors/google/calendar/DeleteEventConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar;
- src/test/java/org/bonitasoft/connectors/google/calendar/MoveEventConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar;
- src/test/java/org/bonitasoft/connectors/google/calendar/UpdateEventConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar;
- src/test/java/org/bonitasoft/connectors/google/calendar/GetEventConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar;
- src/test/java/org/bonitasoft/connectors/google/calendar/common/CalendarConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar.common;
- src/test/java/org/bonitasoft/connectors/google/calendar/common/BuildEventConnectorTest.java:18: package org.bonitasoft.connectors.google.calendar.common;
- src/test/java/org/bonitasoft/connectors/google/calendar/common/DefaultConnectorConfiguration.java:18: package org.bonitasoft.connectors.google.calendar.common;
- … (+7 more)

### bonita_artifact (2)
- pom.xml:7: <artifactId>bonita-connector-google-calendar-v3</artifactId>
- pom.xml:105: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:400: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-googlecalendar-V3.git</developerConnection>

### marketplace (1)
- README.md:61: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-groovy
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 69

### bonitasoft_name (45)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <groovy.main-class>org.bonitasoft.connectors.groovy.GroovyScriptConnector</groovy.main-class>
- … (+37 more)

### bonita_name (8)
- pom.xml:10: <name>Bonita Groovy Connector</name>
- pom.xml:11: <description>Groovy Connector for Bonita</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:86: <!-- Bonita -->
- README.MD:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- src/main/resources/scripting-groovy-script_es.properties:4: connectorDefinitionDescription=Ejecutar un script Groovy fuera de una transacci\u00f3n de Bonita. No hay l\u00edmite de tiempo para la ejecuci\u00f3n.
- src/main/resources/scripting-groovy-script_fr.properties:4: connectorDefinitionDescription=Ex\u00e9cute un script Groovy en dehors d'un transaction Bonita. (pas de limite de temps lors de l'ex\u00e9cution)
- src/main/resources/scripting-groovy-script.properties:3: connectorDefinitionDescription=Execute a Groovy script outside the Bonita transaction. There is no time limit on execution.

### github_upstream (5)
- pom.xml:352: <url>https://github.com/bonitasoft/bonita-connector-groovy</url>
- README.MD:3: [![Actions Status](https://github.com/bonitasoft/bonita-connector-groovy/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-groovy/actions?query=workflow%3ABuild)
- README.MD:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-groovy?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-groovy/releases)
- README.MD:19: - Run the [Create release workflow](https://github.com/bonitasoft/bonita-connector-groovy/actions/workflows/release.yml), set the version to release as parameter
- README.MD:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (3)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:89: <groupId>org.bonitasoft.engine</groupId>

### java_package (3)
- src/test/java/org/bonitasoft/connectors/groovy/ConnectorTest.java:17: package org.bonitasoft.connectors.groovy;
- src/test/java/org/bonitasoft/connectors/groovy/GroovyScriptConnectorTest.java:17: package org.bonitasoft.connectors.groovy;
- src/main/java/org/bonitasoft/connectors/groovy/GroovyScriptConnector.java:17: package org.bonitasoft.connectors.groovy;

### bonita_artifact (3)
- pom.xml:7: <artifactId>bonita-connector-groovy</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:88: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:350: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-groovy.git</developerConnection>

### marketplace (1)
- README.MD:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-ldap
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 74

### bonitasoft_name (50)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:44: <connector-main-class>org.bonitasoft.connectors.ldap.LdapConnector</connector-main-class>
- … (+42 more)

### bonita_name (6)
- pom.xml:11: <name>Bonita LDAP Connector</name>
- pom.xml:12: <description>LDAP Connector for Bonita</description>
- pom.xml:46: <!-- Bonita -->
- pom.xml:75: <!-- Bonita -->
- README.md:23: To help you fill the LDAP search wizard in Bonita Studio, you can use the "search" page of phpLDAPadmin which perform similar requests.
- README.md:40: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (6)
- pom.xml:327: <url>https://github.com/bonitasoft/bonita-connector-ldap</url>
- README.md:3: [![Actions Status](https://github.com/bonitasoft/bonita-connector-ldap/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-ldap/actions?query=workflow%3ABuild)
- README.md:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-ldap?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-ldap/releases)
- README.md:21: To initialize your LDAP server with test data, you can find an example ldif file to import on [bonita-ldap-synchronizer](https://github.com/bonitasoft/bonita-ldap-synchronizer/blob/dev/example/docker/…
- README.md:37: Run the [release](https://github.com/bonitasoft/bonita-connector-ldap/actions/workflows/release.yml) action, set the version to releae as parameter
- README.md:40: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (2)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:78: <groupId>org.bonitasoft.engine</groupId>

### java_package (6)
- src/test/java/org/bonitasoft/connectors/ldap/LdapConnectorTest.java:18: package org.bonitasoft.connectors.ldap;
- src/main/java/org/bonitasoft/connectors/ldap/LdapDereferencingAlias.java:18: package org.bonitasoft.connectors.ldap;
- src/main/java/org/bonitasoft/connectors/ldap/LdapAttribute.java:18: package org.bonitasoft.connectors.ldap;
- src/main/java/org/bonitasoft/connectors/ldap/LdapConnector.java:18: package org.bonitasoft.connectors.ldap;
- src/main/java/org/bonitasoft/connectors/ldap/LdapScope.java:18: package org.bonitasoft.connectors.ldap;
- src/main/java/org/bonitasoft/connectors/ldap/LdapProtocol.java:18: package org.bonitasoft.connectors.ldap;

### bonita_artifact (2)
- pom.xml:8: <artifactId>bonita-connector-ldap</artifactId>
- pom.xml:77: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:325: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-ldap.git</developerConnection>

### marketplace (1)
- README.md:40: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-rest
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 556

### bonitasoft_name (223)
- pom.xml:8: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:14: <url>https://www.bonitasoft.com</url>
- pom.xml:18: <id>bonitasoft</id>
- pom.xml:19: <name>Bonitasoft</name>
- pom.xml:20: <email>rd.user@bonitasoft.com</email>
- pom.xml:21: <organization>Bonitasoft</organization>
- pom.xml:22: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:45: <head.main-class>org.bonitasoft.connectors.rest.HeadConnectorImpl</head.main-class>
- … (+215 more)

### bonita_name (271)
- pom.xml:12: <name>Bonita Rest Connector</name>
- pom.xml:13: <description>Rest Connector for Bonita</description>
- pom.xml:107: <!-- Bonita -->
- pom.xml:113: <!--Do not update until Bonita platfotm updates to httpclient5+ -->
- pom.xml:164: <!-- Bonita -->
- README.MD:3: A multi-connector project for the Bonita BPM platform to execute REST requests from a process.
- README.MD:63: - ✅ **Bonita document integration** - Read request body from process documents
- README.MD:72: - ✅ **Bonita context injection** - Process/activity metadata in headers
- … (+263 more)

### github_upstream (8)
- pom.xml:516: <url>https://github.com/bonitasoft/bonita-connector-rest</url>
- README.MD:5: [![Actions Status](https://github.com/bonitasoft/bonita-connector-rest/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-rest/actions?query=workflow%3ABuild)
- README.MD:7: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-rest?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-rest/releases)
- README.MD:85: `git clone https://github.com/bonitasoft/bonita-connector-rest.git`
- README.MD:157: - Run the [release](https://github.com/bonitasoft/bonita-connector-rest/actions/workflows/release.yml) action, set the version to release as parameter. The release will be published to [Maven Central]…
- README.MD:160: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- CLAUDE.md:381: 2. Run [release action](https://github.com/bonitasoft/bonita-connector-rest/actions/workflows/release.yml) with version parameter
- CLAUDE.md:384: 5. Update [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with new version

### maven_groupid (5)
- pom.xml:8: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:146: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:167: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:172: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:248: <groupId>org.bonitasoft.web</groupId>

### java_package (42)
- src/test/java/org/bonitasoft/connectors/rest/PostConnectorImplTest.java:15: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/PutConnectorImplTest.java:15: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/Oauth2ConnectorImplTest.java:15: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/ConnectorTestToolkit.java:1: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/DeleteConnectorImplTest.java:15: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/GetConnectorImplTest.java:15: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/RestConnectorIT.java:1: package org.bonitasoft.connectors.rest;
- src/test/java/org/bonitasoft/connectors/rest/RESTConnectorTest.java:11: package org.bonitasoft.connectors.rest;
- … (+34 more)

### bonita_artifact (5)
- pom.xml:9: <artifactId>bonita-connector-rest</artifactId>
- pom.xml:147: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:166: <artifactId>bonita-common</artifactId>
- pom.xml:171: <artifactId>bonita-server</artifactId>
- pom.xml:249: <artifactId>bonita-java-client</artifactId>

### marketplace (2)
- README.MD:160: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- CLAUDE.md:384: 5. Update [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with new version


## kireibpm-connector-salesforce
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 113

### bonitasoft_name (85)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <salesforce-createsobject.main-class>org.bonitasoft.connectors.salesforce.partner.CreateSObjectConnector</salesforce-createsobject.main-class>
- … (+77 more)

### bonita_name (4)
- pom.xml:10: <name>Bonita Salesforce Connector</name>
- pom.xml:11: <description>Salesforce Connectors for Bonita</description>
- pom.xml:70: <!-- Bonita -->
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (5)
- pom.xml:390: <url>https://github.com/bonitasoft/bonita-connector-salesforce</url>
- README.md:3: [![Actions Status](https://github.com/bonitasoft/bonita-connector-salesforce/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-salesforce/actions?query=workflow%3ABuild)
- README.md:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-salesforce?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-salesforce/releases)
- README.md:19: - Run the [Create release](https://github.com/bonitasoft/bonita-connector-salesforce/actions/workflows/release.yml) action, set the version to release as parameter
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (2)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:103: <groupId>org.bonitasoft.engine</groupId>

### java_package (13)
- src/test/java/org/bonitasoft/connectors/salesforce/partner/ConnectorConfiguration.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/test/java/org/bonitasoft/connectors/salesforce/partner/QuerySObjectsConnectorTest.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/test/java/org/bonitasoft/connectors/salesforce/partner/UpdateSObjectConnectorTest.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/test/java/org/bonitasoft/connectors/salesforce/partner/CreateSObjectConnectorTest.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/test/java/org/bonitasoft/connectors/salesforce/partner/RetrieveSObjectsConnectorTest.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/test/java/org/bonitasoft/connectors/salesforce/partner/SalesforceConnectorTest.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/test/java/org/bonitasoft/connectors/salesforce/partner/DeleteSObjectsConnectorTest.java:18: package org.bonitasoft.connectors.salesforce.partner;
- src/main/java/org/bonitasoft/connectors/salesforce/partner/QuerySObjectsConnector.java:18: package org.bonitasoft.connectors.salesforce.partner;
- … (+5 more)

### bonita_artifact (2)
- pom.xml:7: <artifactId>bonita-connector-salesforce</artifactId>
- pom.xml:102: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:388: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-salesforce.git</developerConnection>

### marketplace (1)
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-sap
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 70

### bonitasoft_name (46)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- README.md:2: ![](https://github.com/bonitasoft/bonita-connector-sap/workflows/Build/badge.svg)
- README.md:3: [![Sonarcloud Status](https://sonarcloud.io/api/project_badges/measure?project=bonitasoft_bonita-connector-sap&metric=alert_status)](https://sonarcloud.io/dashboard?id=bonitasoft_bonita-connector-sap)
- README.md:4: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-sap?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-sap/releases)
- README.md:5: [![Maven Central](https://img.shields.io/maven-central/v/org.bonitasoft.connectors/bonita-connector-sap.svg?label=Maven%20Central&color=orange)](https://search.maven.org/search?q=g:%22org.bonitasoft.c…
- README.md:18: - Run the [Create release](https://github.com/bonitasoft/bonita-connector-sap/actions/workflows/release.yml) action, set the version to release as parameter
- README.md:21: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- sapjco-api/pom.xml:8: <groupId>org.bonitasoft.connectors</groupId>
- … (+38 more)

### bonita_name (3)
- README.md:21: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- bonita-connector-sap/pom.xml:12: <description>SAP JCO3 Call Function connector for Bonita</description>
- bonita-connector-sap/pom.xml:46: <!-- Bonita version -->

### github_upstream (7)
- README.md:2: ![](https://github.com/bonitasoft/bonita-connector-sap/workflows/Build/badge.svg)
- README.md:4: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-sap?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-sap/releases)
- README.md:18: - Run the [Create release](https://github.com/bonitasoft/bonita-connector-sap/actions/workflows/release.yml) action, set the version to release as parameter
- README.md:21: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.
- bonita-connector-sap/pom.xml:348: <developerConnection>scm:git:https://${env.GIT_USERNAME}:${env.GIT_PASSWORD}@github.com/bonitasoft/bonita-connector-sap.git</developerConnection>
- bonita-connector-sap/pom.xml:349: <connection>scm:git:https://${env.GIT_USERNAME}:${env.GIT_PASSWORD}@github.com/bonitasoft/bonita-connector-sap.git</connection>
- bonita-connector-sap/pom.xml:350: <url>https://github.com/bonitasoft/bonita-connector-sap</url>

### maven_groupid (4)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- sapjco-api/pom.xml:8: <groupId>org.bonitasoft.connectors</groupId>
- bonita-connector-sap/pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- bonita-connector-sap/pom.xml:90: <groupId>org.bonitasoft.engine</groupId>

### java_package (3)
- bonita-connector-sap/src/test/java/org/bonitasoft/connectors/sap/SAPUtil.java:18: package org.bonitasoft.connectors.sap;
- bonita-connector-sap/src/test/java/org/bonitasoft/connectors/sap/SAPCallFunctionTest.java:18: package org.bonitasoft.connectors.sap;
- bonita-connector-sap/src/main/java/org/bonitasoft/connectors/sap/SAPCallFunction.java:18: package org.bonitasoft.connectors.sap;

### bonita_artifact (4)
- pom.xml:8: <artifactId>bonita-connector-sap-parent</artifactId>
- sapjco-api/pom.xml:9: <artifactId>bonita-connector-sap-parent</artifactId>
- bonita-connector-sap/pom.xml:8: <artifactId>bonita-connector-sap</artifactId>
- bonita-connector-sap/pom.xml:89: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (2)
- bonita-connector-sap/pom.xml:348: <developerConnection>scm:git:https://${env.GIT_USERNAME}:${env.GIT_PASSWORD}@github.com/bonitasoft/bonita-connector-sap.git</developerConnection>
- bonita-connector-sap/pom.xml:349: <connection>scm:git:https://${env.GIT_USERNAME}:${env.GIT_PASSWORD}@github.com/bonitasoft/bonita-connector-sap.git</connection>

### marketplace (1)
- README.md:21: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-shell-script
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 61

### bonitasoft_name (40)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <shell.main-class>org.bonitasoft.connectors.shell.ShellConnector</shell.main-class>
- … (+32 more)

### bonita_name (5)
- pom.xml:10: <name>Bonita Shell Connector</name>
- pom.xml:11: <description>Shell Connector for Bonita</description>
- pom.xml:45: <!-- Bonita -->
- pom.xml:86: <!-- Bonita -->
- README.MD:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (5)
- pom.xml:336: <url>https://github.com/bonitasoft/bonita-connector-shell-script</url>
- README.MD:3: [![Actions Status](https://github.com/bonitasoft/bonita-connector-shell-script/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-shell-script/actions?query=workflow%3ABuild)
- README.MD:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-shell-script?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-shell-script/releases)
- README.MD:19: - Run the [release](https://github.com/bonitasoft/bonita-connector-shell-script/actions/workflows/release.yml) action, set the version to releae as parameter
- README.MD:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (3)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:76: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:89: <groupId>org.bonitasoft.engine</groupId>

### java_package (3)
- src/test/java/org/bonitasoft/connectors/shell/ShellConnectorTest.java:17: package org.bonitasoft.connectors.shell;
- src/test/java/org/bonitasoft/connectors/shell/ConnectorTest.java:17: package org.bonitasoft.connectors.shell;
- src/main/java/org/bonitasoft/connectors/shell/ShellConnector.java:17: package org.bonitasoft.connectors.shell;

### bonita_artifact (3)
- pom.xml:7: <artifactId>bonita-connector-shell-script</artifactId>
- pom.xml:77: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:88: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:334: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-shell-script.git</developerConnection>

### marketplace (1)
- README.MD:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-slack
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 53

### bonitasoft_name (35)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:11: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:44: <send-message-main-class>org.bonitasoft.connectors.SlackConnector</send-message-main-class>
- … (+27 more)

### bonita_name (7)
- pom.xml:10: <description>Slack Connector for Bonita</description>
- pom.xml:49: <!-- Bonita -->
- pom.xml:86: <!-- Bonita -->
- README.adoc:1: = Bonita connector Slack
- README.adoc:58: Bonita connector scripts are written with Groovy, thus the syntax to use the sdk differs a bit from the examples of the Slack documentation.
- README.adoc:101: Once this is done, update the https://github.com/bonitasoft/bonita-marketplace[Bonita marketplace repository] with the new version of the connector.
- src/main/resources/bonita-connector-slack.properties:2: connectorDefinitionDescription=Bonita connector to send slack messages

### github_upstream (3)
- pom.xml:338: <url>https://github.com/bonitasoft/bonita-connector-slack</url>
- README.adoc:98: * Start the GitHub https://github.com/bonitasoft/bonita-connector-slack/actions/workflows/release.yml[release] action. You'll have to define the release version, which should match the pom.xml version…
- README.adoc:101: Once this is done, update the https://github.com/bonitasoft/bonita-marketplace[Bonita marketplace repository] with the new version of the connector.

### maven_groupid (3)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:75: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:89: <groupId>org.bonitasoft.engine</groupId>

### bonita_artifact (3)
- pom.xml:7: <artifactId>bonita-connector-slack</artifactId>
- pom.xml:76: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:88: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:336: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-slack.git</developerConnection>

### marketplace (1)
- README.adoc:101: Once this is done, update the https://github.com/bonitasoft/bonita-marketplace[Bonita marketplace repository] with the new version of the connector.


## kireibpm-connector-twitter
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 78

### bonitasoft_name (58)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:44: <twitter-direct.main-class>org.bonitasoft.connectors.twitter.TwitterDirectMessageConnector</twitter-direct.main-class>
- … (+50 more)

### bonita_name (4)
- pom.xml:11: <name>Bonita Twitter Connector</name>
- pom.xml:12: <description>Connector to interact with Twitter API's from Bonita</description>
- pom.xml:56: <!-- Bonita -->
- pom.xml:100: <!-- Bonita -->

### github_upstream (3)
- pom.xml:333: <url>https://github.com/bonitasoft/bonita-connector-twitter</url>
- README.md:8: [![Actions Status](https://github.com/bonitasoft/bonita-connector-twitter/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-twitter/actions?query=workflow%3ABuild)
- README.md:10: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-twitter?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-twitter/releases)

### maven_groupid (3)
- pom.xml:7: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:84: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:103: <groupId>org.bonitasoft.engine</groupId>

### java_package (6)
- src/test/java/org/bonitasoft/connectors/twitter/test/TwitterConnectorTest.java:15: package org.bonitasoft.connectors.twitter.test;
- src/test/java/org/bonitasoft/connectors/twitter/test/TwitterDirectMessageConnectorTest.java:15: package org.bonitasoft.connectors.twitter.test;
- src/test/java/org/bonitasoft/connectors/twitter/test/TwitterUpdateStatusConnectorTest.java:15: package org.bonitasoft.connectors.twitter.test;
- src/main/java/org/bonitasoft/connectors/twitter/TwitterDirectMessageConnector.java:15: package org.bonitasoft.connectors.twitter;
- src/main/java/org/bonitasoft/connectors/twitter/TwitterConnector.java:15: package org.bonitasoft.connectors.twitter;
- src/main/java/org/bonitasoft/connectors/twitter/TwitterUpdateStatusConnector.java:15: package org.bonitasoft.connectors.twitter;

### bonita_artifact (3)
- pom.xml:8: <artifactId>bonita-connector-twitter</artifactId>
- pom.xml:85: <artifactId>bonita-engine</artifactId>
- pom.xml:102: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:331: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-twitter.git</developerConnection>


## kireibpm-connector-uipath
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 176

### bonitasoft_name (135)
- pom.xml:8: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:44: <uipath-add-queueItem.main-class>org.bonitasoft.engine.connector.uipath.UIPathAddToQueueConnector</uipath-add-queueItem.main-class>
- … (+127 more)

### bonita_name (7)
- pom.xml:11: <name>Bonita UIPath Connector</name>
- pom.xml:12: <description>UIPath Connector for Bonita</description>
- pom.xml:65: <!-- Bonita -->
- pom.xml:95: <!-- Bonita -->
- README.md:11: **IMPORTANT:** Version 2.3.0 of the connector requires Bonita Studio released after October 2025.
- README.md:12: Earlier versions of Bonita Studio are not compatible with this connector version.
- README.md:27: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (5)
- pom.xml:368: <url>https://github.com/bonitasoft/bonita-connector-uipath</url>
- README.md:3: ![](https://github.com/bonitasoft/bonita-connector-uipath/workflows/Build/badge.svg)
- README.md:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-uipath?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-uipath/releases)
- README.md:24: - Run the [release](https://github.com/bonitasoft/bonita-connector-uipath/actions/workflows/release.yml) action, set the version to release as parameter. The release will be published to [Maven Centra…
- README.md:27: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (2)
- pom.xml:8: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:98: <groupId>org.bonitasoft.engine</groupId>

### java_package (23)
- src/test/java/org/bonitasoft/engine/connector/uipath/UIPathGetJobConnectorTest.java:15: package org.bonitasoft.engine.connector.uipath;
- src/test/java/org/bonitasoft/engine/connector/uipath/UIPathAddToQueueConnectorTest.java:15: package org.bonitasoft.engine.connector.uipath;
- src/test/java/org/bonitasoft/engine/connector/uipath/UIPathConnectorTest.java:1: package org.bonitasoft.engine.connector.uipath;
- src/test/java/org/bonitasoft/engine/connector/uipath/UIPathStartJobsConnectorTest.java:15: package org.bonitasoft.engine.connector.uipath;
- src/main/java/org/bonitasoft/engine/connector/uipath/UIPathStartJobsConnector.java:15: package org.bonitasoft.engine.connector.uipath;
- src/main/java/org/bonitasoft/engine/connector/uipath/UIPathService.java:15: package org.bonitasoft.engine.connector.uipath;
- src/main/java/org/bonitasoft/engine/connector/uipath/UIPathGetJobConnector.java:15: package org.bonitasoft.engine.connector.uipath;
- src/main/java/org/bonitasoft/engine/connector/uipath/UIPathConnector.java:1: package org.bonitasoft.engine.connector.uipath;
- … (+15 more)

### bonita_artifact (2)
- pom.xml:9: <artifactId>bonita-connector-uipath</artifactId>
- pom.xml:97: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:366: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-uipath.git</developerConnection>

### marketplace (1)
- README.md:27: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-connector-webservice
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 127

### bonitasoft_name (95)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:16: <id>bonitasoft</id>
- pom.xml:17: <name>Bonitasoft</name>
- pom.xml:18: <email>rd.user@bonitasoft.com</email>
- pom.xml:19: <organization>Bonitasoft</organization>
- pom.xml:20: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:43: <webservice.main-class>org.bonitasoft.connectors.ws.SecureWSConnector</webservice.main-class>
- … (+87 more)

### bonita_name (5)
- pom.xml:10: <name>Bonita Webservice Connector</name>
- pom.xml:11: <description>Webservice Connector for Bonita</description>
- pom.xml:54: <!-- Bonita -->
- pom.xml:109: <!-- Bonita -->
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### github_upstream (4)
- pom.xml:463: <url>https://github.com/bonitasoft/bonita-connector-webservice</url>
- README.md:3: [![Actions Status](https://github.com/bonitasoft/bonita-connector-webservice/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-connector-webservice/actions?query=workflow%3ABuild)
- README.md:5: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-connector-webservice?color=blue&label=Release)](https://github.com/bonitasoft/bonita-connector-webservice/releases)
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.

### maven_groupid (3)
- pom.xml:6: <groupId>org.bonitasoft.connectors</groupId>
- pom.xml:89: <groupId>org.bonitasoft.runtime</groupId>
- pom.xml:112: <groupId>org.bonitasoft.engine</groupId>

### java_package (15)
- src/test/java/org/bonitasoft/connectors/ws/ServerThread.java:17: package org.bonitasoft.connectors.ws;
- src/test/java/org/bonitasoft/connectors/ws/Server.java:17: package org.bonitasoft.connectors.ws;
- src/test/java/org/bonitasoft/connectors/ws/SecureWSConnectorTest.java:17: package org.bonitasoft.connectors.ws;
- src/test/java/org/bonitasoft/connectors/ws/SecureWSConnectorUnitTest.java:17: package org.bonitasoft.connectors.ws;
- src/test/java/org/bonitasoft/connectors/ws/hello/HelloWorld.java:18: package org.bonitasoft.connectors.ws.hello;
- src/test/java/org/bonitasoft/connectors/ws/hello/HelloWorldImpl.java:18: package org.bonitasoft.connectors.ws.hello;
- src/test/java/org/bonitasoft/connectors/ws/helloHeader/HttpHeaderInInterceptor.java:17: package org.bonitasoft.connectors.ws.helloHeader;
- src/test/java/org/bonitasoft/connectors/ws/helloHeader/HelloHeader.java:18: package org.bonitasoft.connectors.ws.helloHeader;
- … (+7 more)

### bonita_artifact (3)
- pom.xml:7: <artifactId>bonita-connector-webservice</artifactId>
- pom.xml:90: <artifactId>bonita-runtime-bom</artifactId>
- pom.xml:111: <artifactId>bonita-common</artifactId>

### scm_bonitasoft (1)
- pom.xml:461: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-connector-webservice.git</developerConnection>

### marketplace (1)
- README.md:22: Once this is done, update the [Bonita marketplace repository](https://github.com/bonitasoft/bonita-marketplace) with the new version of the connector.


## kireibpm-data-repository
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 41

### bonitasoft_name (29)
- pom.xml:6: <groupId>org.bonitasoft.web</groupId>
- package.json:52: "url": "https://github.com/bonitasoft/bonita-data-repository"
- test/ConfigurationManager.test.ts:2: * Copyright © 2019 Bonitasoft S.A.
- test/ConfigurationManager.test.ts:3: * Bonitasoft, 32 rue Gustave Eiffel - 38000 Grenoble
- test/StudioHealthCheck.test.ts:2: * Copyright © 2019 Bonitasoft S.A.
- test/StudioHealthCheck.test.ts:3: * Bonitasoft, 32 rue Gustave Eiffel - 38000 Grenoble
- copyright/copyright.ftl:1: Copyright © ${project.inceptionYear} Bonitasoft S.A.
- copyright/copyright.ftl:2: Bonitasoft, 32 rue Gustave Eiffel - 38000 Grenoble
- … (+21 more)

### bonita_name (6)
- README.md:1: # Bonita Data Repository server
- infrastructure/dependencies/create_pull_request.sh:15: echo "    --repository              The Bonita repository where create the pull request"
- infrastructure/dependencies/create_pull_request.sh:103: if [ -z "${REPOSITORY}" ]; then echo "ERROR Bonita repository is needed"; usage; fi
- infrastructure/dependencies/dependencies.sh:69: COMMIT_MESSAGE=${COMMIT_MESSAGE:=chore(dependencies): Adding Bonita data-repo dependencies ${VERSION}}
- infrastructure/dependencies/dependencies.sh:94: node ../${SCRIPT_DIR}/node_modules/@bonitasoft/dependency-list-to-markdown/src/generateMarkdownContent.js --folder=${FOLDER} --outputFile ${OUTPUT_FILE} --header="Bonita Data-repository dependencies $…
- src/server/BdrServer.ts:137: res.send('<h3>Bonita Data Repository server is up and running</h3>');

### github_upstream (4)
- package.json:52: "url": "https://github.com/bonitasoft/bonita-data-repository"
- infrastructure/listDependencies.pipeline.groovy:39: userRemoteConfigs: [[url: 'https://github.com/bonitasoft/bonita-data-repository.git',
- infrastructure/dependencies/common.sh:31: git clone "https://github.com/bonitasoft/${1}.git"
- infrastructure/dependencies/common.sh:37: git clone --single-branch -b ${2} "https://github.com/bonitasoft/${1}.git" --depth 1

### maven_groupid (1)
- pom.xml:6: <groupId>org.bonitasoft.web</groupId>

### bonita_artifact (1)
- pom.xml:7: <artifactId>bonita-data-repository</artifactId>


## kireibpm-distrib
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 261

### bonitasoft_name (123)
- pom.xml:5: <groupId>org.bonitasoft.distrib</groupId>
- pom.xml:12: <url>https://www.bonitasoft.com</url>
- pom.xml:21: <id>bonitasoft</id>
- pom.xml:22: <name>Bonitasoft</name>
- pom.xml:23: <email>rd.user@bonitasoft.com</email>
- pom.xml:24: <organization>Bonitasoft</organization>
- pom.xml:25: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:37: <connection>scm:git:git://github.com/bonitasoft/bonita-distrib.git</connection>
- … (+115 more)

### bonita_name (66)
- pom.xml:10: <name>Bonita Community Distrib</name>
- pom.xml:11: <description>This project generates the Bonita Runtime bundles for the Community edition.</description>
- README.md:1: # Bonita Distrib #
- README.md:3: This project generates the Bonita Runtime bundles.
- README.md:15: The [Bonita Community build script](https://github.com/Bonitasoft-Community/Build-Bonita) can help in that case.
- bonita-runtime-bom/pom.xml:8: <name>Bonita Runtime BOM (Bill of Materials)</name>
- bonita-runtime-bom/pom.xml:11: <description>Bill of Materials of the Bonita Runtime component</description>
- bonita-runtime-bom/pom.xml:27: <name>The Bonita Engine Development Team</name>
- … (+58 more)

### github_upstream (5)
- pom.xml:37: <connection>scm:git:git://github.com/bonitasoft/bonita-distrib.git</connection>
- pom.xml:39: <url>https://github.com/bonitasoft/bonita-distrib</url>
- README.md:21: If you want to contribute, ask questions about the project, report bug, see the [contributing guide](https://github.com/bonitasoft/bonita-developer-resources/blob/master/CONTRIBUTING.MD).
- bonita-runtime-bom/pom.xml:33: <connection>scm:git:http://github.com/bonitasoft/bonita-distrib.git</connection>
- bonita-runtime-bom/pom.xml:35: <url>http://github.com/bonitasoft/bonita-distrib</url>

### maven_groupid (37)
- pom.xml:5: <groupId>org.bonitasoft.distrib</groupId>
- pom.xml:63: <groupId>org.bonitasoft.engine</groupId>
- bonita-runtime-bom/pom.xml:4: <groupId>org.bonitasoft.runtime</groupId>
- bonita-runtime-bom/pom.xml:41: <groupId>org.bonitasoft.engine</groupId>
- tomcat/pom.xml:4: <groupId>org.bonitasoft.distrib</groupId>
- tomcat/pom.xml:34: <groupId>org.bonitasoft.distrib.tomcat</groupId>
- tomcat/pom.xml:53: <groupId>org.bonitasoft.platform</groupId>
- tomcat/pom.xml:72: <groupId>org.bonitasoft.distrib</groupId>
- … (+29 more)

### java_package (1)
- tomcat-resources/tomcat-bonita-extensions/src/main/java/org/bonitasoft/runtime/tomcat/StdoutAccessLogValve.java:1: package org.bonitasoft.runtime.tomcat;;

### bonita_artifact (25)
- pom.xml:6: <artifactId>bonita-distrib</artifactId>
- pom.xml:64: <artifactId>bonita-engine</artifactId>
- bonita-runtime-bom/pom.xml:5: <artifactId>bonita-runtime-bom</artifactId>
- bonita-runtime-bom/pom.xml:42: <artifactId>bonita-engine</artifactId>
- tomcat/pom.xml:5: <artifactId>bonita-distrib</artifactId>
- tomcat/pom.xml:73: <artifactId>bonita-war</artifactId>
- bonita-war/pom.xml:8: <artifactId>bonita-distrib</artifactId>
- bonita-war/pom.xml:11: <artifactId>bonita-war</artifactId>
- … (+17 more)

### scm_bonitasoft (4)
- pom.xml:37: <connection>scm:git:git://github.com/bonitasoft/bonita-distrib.git</connection>
- pom.xml:38: <developerConnection>scm:git:ssh://github.com:bonitasoft/bonita-distrib.git</developerConnection>
- bonita-runtime-bom/pom.xml:33: <connection>scm:git:http://github.com/bonitasoft/bonita-distrib.git</connection>
- bonita-runtime-bom/pom.xml:34: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-distrib.git</developerConnection>


## kireibpm-engine
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 49585

### bonitasoft_name (44273)
- README.md:3: [![Build](https://github.com/bonitasoft/bonita-engine/actions/workflows/build.yml/badge.svg)](https://github.com/bonitasoft/bonita-engine/actions/workflows/build.yml)
- README.md:5: [![Maven Central](https://maven-badges.herokuapp.com/maven-central/org.bonitasoft.engine/bonita-server/badge.svg)](https://maven-badges.herokuapp.com/maven-central/org.bonitasoft.engine/bonita-server)
- README.md:98: [downloads]: https://www.bonitasoft.com/downloads
- README.md:99: [standalone]: https://documentation.bonitasoft.com/bonita/latest/runtime/embed-engine
- README.md:100: [guide]: https://github.com/bonitasoft/bonita-developer-resources/blob/master/CONTRIBUTING.MD
- build.gradle:8: property "sonar.projectKey", "bonitasoft_bonita-engine"
- build.gradle:9: property "sonar.organization", "bonitasoft"
- common.gradle:6: group = 'org.bonitasoft.engine'
- … (+44265 more)

### bonita_name (344)
- README.md:1: # Bonita Engine
- README.md:7: Deploy, execute, manage applications made with Bonita Studio.
- README.md:12: The engine is included as part of either [Bonita Studio][downloads] or [Bonita Runtime][downloads], and executes the BPMN process logic.
- README.md:30: To be able to successfully build other Bonita components that use the Engine, run:
- README.md:34: Among other things, it also generates the javadoc used by Bonita Studio.
- README.md:87: * `buildSrc` : Internal Gradle plugins used to build Bonita Engine
- bonita-integration-tests/bonita-integration-tests-web/build.gradle:27: description = 'Bonita Integration Tests Web'
- bonita-integration-tests/bonita-integration-tests-web/src/main/java/org/bonitasoft/test/toolkit/organization/TestUser.java:104: throw new TestToolkitException("Can't get api to log out. Bonita home not set", e);
- … (+336 more)

### github_upstream (4)
- README.md:3: [![Build](https://github.com/bonitasoft/bonita-engine/actions/workflows/build.yml/badge.svg)](https://github.com/bonitasoft/bonita-engine/actions/workflows/build.yml)
- README.md:100: [guide]: https://github.com/bonitasoft/bonita-developer-resources/blob/master/CONTRIBUTING.MD
- buildSrc/src/main/groovy/org/bonitasoft/engine/gradle/PomUtils.groovy:30: connection = "scm:git:http://github.com/bonitasoft/bonita-engine.git"
- buildSrc/src/main/groovy/org/bonitasoft/engine/gradle/PomUtils.groovy:32: url = "http://github.com/bonitasoft/bonita-engine"

### maven_groupid (1)
- services/bonita-business-data/bonita-business-data-impl/src/main/resources/example-pom.xml:30: <groupId>org.bonitasoft.engine</groupId>

### java_package (4959)
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/WaitUntil.java:14: package org.bonitasoft.web.rest.server;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/datastore/bpm/CommentDatastoreIntegrationIT.java:14: package org.bonitasoft.web.rest.server.datastore.bpm;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/datastore/bpm/cases/CaseDatastoreIT.java:14: package org.bonitasoft.web.rest.server.datastore.bpm.cases;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/datastore/bpm/cases/ArchivedCaseDatastoreIT.java:14: package org.bonitasoft.web.rest.server.datastore.bpm.cases;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/datastore/bpm/flownode/HumanTaskDatastoreIT.java:14: package org.bonitasoft.web.rest.server.datastore.bpm.flownode;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/api/organization/APIProfessionalContactDataIT.java:14: package org.bonitasoft.web.rest.server.api.organization;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/api/organization/APIMembershipIT.java:14: package org.bonitasoft.web.rest.server.api.organization;
- bonita-integration-tests/bonita-integration-tests-web/src/test/java/org/bonitasoft/web/rest/server/api/organization/APIRoleIT.java:14: package org.bonitasoft.web.rest.server.api.organization;
- … (+4951 more)

### bonita_artifact (1)
- services/bonita-business-data/bonita-business-data-impl/src/main/resources/example-pom.xml:31: <artifactId>bonita-client</artifactId>

### scm_bonitasoft (1)
- buildSrc/src/main/groovy/org/bonitasoft/engine/gradle/PomUtils.groovy:30: connection = "scm:git:http://github.com/bonitasoft/bonita-engine.git"

### docker_bonitasoft (2)
- bpm/bonita-core/bonita-process-engine/src/main/java/org/bonitasoft/engine/service/impl/SpringBeanAccessor.java:173: return List.of("bonita-community.xml", "bonita-subscription.xml");
- buildSrc/src/main/groovy/org/bonitasoft/engine/gradle/docker/DockerDatabaseContainerTasksCreator.groovy:36: image              : 'bonitasoft.jfrog.io/docker-releases/bonita-oracle-19c-ee:0.0.2',


## kireibpm-java-client
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 2295

### bonitasoft_name (1860)
- pom.xml:4: <groupId>org.bonitasoft.web</groupId>
- pom.xml:10: <url>https://www.bonitasoft.com</url>
- pom.xml:19: <id>bonitasoft</id>
- pom.xml:20: <name>Bonitasoft</name>
- pom.xml:21: <email>rd.user@bonitasoft.com</email>
- pom.xml:22: <organization>Bonitasoft</organization>
- pom.xml:23: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:27: <connection>scm:git:git@github.com:bonitasoft/bonita-java-client.git</connection>
- … (+1852 more)

### bonita_name (124)
- pom.xml:9: <description>Java client for Bonita REST API</description>
- pom.xml:38: <!-- Bonita -->
- README.adoc:1: = Bonita Java Client
- README.adoc:55: This project is the official web client for Bonita when working with Java (or on the JVM).
- README.adoc:57: It is based on an https://swagger.io/specification/[OpenAPI image:openapi.png[OpenAPI,width=30px]^] specification for **Bonita {bonita-short-version}** `Enterprise` edition.
- README.adoc:64: * Cover publicly available http endpoints of Bonita Platform {bonita-short-version} and onwards
- README.adoc:65: * Built-in Bonita authentication support (SSO only supported through Bearer authentication with OpenID Connect SSO)
- README.adoc:93: // Log Bonita server version
- … (+116 more)

### github_upstream (7)
- pom.xml:30: <url>https://github.com/bonitasoft/bonita-java-client</url>
- README.adoc:296: The OpenAPI spec is retrieve from the [bonita-openapi](https://github.com/bonitasoft/bonita-openapi/) repository releases. To  update the spec version you must:
- README.adoc:362: - Project homepage: https://github.com/bonitasoft/{project-artifact-id}/
- README.adoc:363: - Repository: https://github.com/bonitasoft/{project-artifact-id}/
- README.adoc:364: - Issue tracker: https://github.com/bonitasoft/{project-artifact-id}/issues. +
- api/openapi.yaml:8: \ pages for a good user experience.\n\nAn open source [java client](https://github.com/bonitasoft/bonita-java-client)\
- src/script/update-bonita-openapi-spec.groovy:9: def remoteBonitaSpec = "https://github.com/bonitasoft/bonita-openapi/releases/download/$bonitaSpecVersion/bonita-openapi-${bonitaSpecVersion}.yaml".toURL()

### maven_groupid (1)
- pom.xml:4: <groupId>org.bonitasoft.web</groupId>

### java_package (301)
- src/test/java/org/bonitasoft/web/client/TestUtils.java:17: package org.bonitasoft.web.client;
- src/test/java/org/bonitasoft/web/client/BonitaClientIT.java:17: package org.bonitasoft.web.client;
- src/test/java/org/bonitasoft/web/client/feign/CachingApiProviderTest.java:17: package org.bonitasoft.web.client.feign;
- src/test/java/org/bonitasoft/web/client/feign/BonitaFeignClientTest.java:17: package org.bonitasoft.web.client.feign;
- src/test/java/org/bonitasoft/web/client/feign/BonitaFeignClientBuilderImplTest.java:17: package org.bonitasoft.web.client.feign;
- src/test/java/org/bonitasoft/web/client/feign/BonitaClientTest.java:17: package org.bonitasoft.web.client.feign;
- src/test/java/org/bonitasoft/web/client/feign/decoder/DecoderTest.java:17: package org.bonitasoft.web.client.feign.decoder;
- src/test/java/org/bonitasoft/web/client/feign/decoder/BonitaErrorDecoderTest.java:17: package org.bonitasoft.web.client.feign.decoder;
- … (+293 more)

### bonita_artifact (1)
- pom.xml:5: <artifactId>bonita-java-client</artifactId>

### scm_bonitasoft (1)
- pom.xml:28: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-java-client.git</developerConnection>


## kireibpm-openapi
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 95

### bonitasoft_name (26)
- README.adoc:3: image:https://github.com/bonitasoft/bonita-openapi/workflows/build/badge.svg[Actions Status, link=https://github.com/bonitasoft/bonita-openapi/actions?query=build]
- README.adoc:4: image:https://img.shields.io/github/v/release/bonitasoft/bonita-openapi?color=blue&label=Release[GitHub release, link=https://github.com/bonitasoft/bonita-openapi/releases]
- README.adoc:104: * On https://github.com/bonitasoft/bonita-rest-documentation-site/blob/master/cli/restdoc-site.cfg.json[rest documentation config], add the released version for each compatible Bonita version.
- README.adoc:106: * Follow updates on your PR, and also to update `openApiLatestVersion:` in `antora.yml` file for each https://github.com/bonitasoft/bonita-doc/[Bonita documentation content] corresponding branches.
- docs/index.html.hbs:7: <meta name="author" content="Bonitasoft">
- openapi/intro.md:10: An open source [java client](https://github.com/bonitasoft/bonita-java-client) is implemented above the HTTP API. It is available on [Maven central](https://search.maven.org/search?q=g:%22org.bonitaso…
- openapi/intro.md:20: You can create [Rest API Extensions](https://documentation.bonitasoft.com/bonita/latest/api/rest-api-extensions) to extend the Rest API by adding missing resources (not provided by the Rest API).
- openapi/intro.md:102: If you are searching for business data using a custom query, there must be a [count query in the BDM](https://documentation.bonitasoft.com/bonita/latest/data/define-and-deploy-the-bdm). If there is no…
- … (+18 more)

### bonita_name (64)
- DEV.md:1: # Bonita HTTP API OpenAPI Definition
- DEV.md:22: Generate postman collections that can imported and runned against a Bonita instance.
- README.adoc:1: = Bonita OpenAPI specification
- README.adoc:7: This project is about describing the Bonita web API in https://swagger.io/specification/[Open API v3] format.
- README.adoc:9: This single yaml file is to become the single source of truth for the Bonita features accessible through HTTP.
- README.adoc:48: The `docker-compose.yaml` file at the project root starts two sites: a https://swagger.io/tools/swagger-ui/[swagger-ui] site and a Bonita instance to query
- README.adoc:59: - Bonita: http://bonita.localhost/bonita
- README.adoc:104: * On https://github.com/bonitasoft/bonita-rest-documentation-site/blob/master/cli/restdoc-site.cfg.json[rest documentation config], add the released version for each compatible Bonita version.
- … (+56 more)

### github_upstream (5)
- README.adoc:3: image:https://github.com/bonitasoft/bonita-openapi/workflows/build/badge.svg[Actions Status, link=https://github.com/bonitasoft/bonita-openapi/actions?query=build]
- README.adoc:4: image:https://img.shields.io/github/v/release/bonitasoft/bonita-openapi?color=blue&label=Release[GitHub release, link=https://github.com/bonitasoft/bonita-openapi/releases]
- README.adoc:104: * On https://github.com/bonitasoft/bonita-rest-documentation-site/blob/master/cli/restdoc-site.cfg.json[rest documentation config], add the released version for each compatible Bonita version.
- README.adoc:106: * Follow updates on your PR, and also to update `openApiLatestVersion:` in `antora.yml` file for each https://github.com/bonitasoft/bonita-doc/[Bonita documentation content] corresponding branches.
- openapi/intro.md:10: An open source [java client](https://github.com/bonitasoft/bonita-java-client) is implemented above the HTTP API. It is available on [Maven central](https://search.maven.org/search?q=g:%22org.bonitaso…


## kireibpm-page-authorization-rules
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 46

### bonitasoft_name (39)
- pom.xml:4: <groupId>org.bonitasoft</groupId>
- pom.xml:15: <groupId>org.bonitasoft.engine</groupId>
- README.md:10: For more information Refer to the [official documentation](https://documentation.bonitasoft.com/?page=custom-authorization-rule-mapping).
- conf/bonita-tenant-community-custom.properties:9: #bdm.hibernate.transaction.jta_platform=${sysprop.bonita.hibernate.transaction.jta_platform:org.bonitasoft.engine.persistence.JNDIBitronixJtaPlatform}
- conf/bonita-tenant-community-custom.properties:13: #org.bonitasoft.engine.clean.invalid.sessions.cron=0 0 */2 * * ?
- conf/bonita-tenant-community-custom.properties:139: ## that implement org.bonitasoft.engine.core.form.AuthorizationRuleMapping
- conf/bonita-tenant-community-custom.properties:140: ## and a set of org.bonitasoft.engine.page.AuthorizationRule
- conf/bonita-tenants-custom.xml:25: <!-- custom authorization rule mapping must implement org.bonitasoft.engine.core.form.AuthorizationRuleMapping -->
- … (+31 more)

### bonita_name (1)
- conf/bonita-tenant-community-custom.properties:1: ## Bonita Tenant server core configuration

### maven_groupid (2)
- pom.xml:4: <groupId>org.bonitasoft</groupId>
- pom.xml:15: <groupId>org.bonitasoft.engine</groupId>

### java_package (3)
- src/test/java/org/bonitasoft/pages/authorization/HasProfileRuleTest.java:17: package org.bonitasoft.pages.authorization;
- src/main/java/org/bonitasoft/pages/authorization/HasProfileRule.java:17: package org.bonitasoft.pages.authorization;
- src/main/java/org/bonitasoft/pages/authorization/AuthorizationRuleMappingWithProfile.java:17: package org.bonitasoft.pages.authorization;

### bonita_artifact (1)
- pom.xml:16: <artifactId>bonita-server</artifactId>


## kireibpm-platform-releases
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 2

### bonitasoft_name (1)
- README.md:2: Learn more at [www.bonitasoft.com/downloads](https://www.bonitasoft.com/downloads)

### bonita_name (1)
- README.md:1: Bonita is used by innovative companies worldwide to deliver better digital user experiences for customers and employees. The extensible and open Bonita application platform is designed for multidiscip…


## kireibpm-portal-js
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 7

### bonitasoft_name (2)
- pom.xml:4: <groupId>org.bonitasoft.web</groupId>
- bower.json:19: "bonita-js-components": "git@github.com:bonitasoft/bonita-js-components#0.4.20",

### bonita_name (3)
- Gruntfile.js:454: title: 'Bonita Portal JS Documentation',
- main/bonita-portal.js:21: $http.defaults.headers.common['X-Bonita-API-Token'] = headers('X-Bonita-API-Token');
- main/common/resources/resources.js:7: * Define the resources accessible from the Bonita API

### maven_groupid (1)
- pom.xml:4: <groupId>org.bonitasoft.web</groupId>

### bonita_artifact (1)
- pom.xml:5: <artifactId>bonita-portal-js</artifactId>


## kireibpm-process-model
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 17063

### bonitasoft_name (15696)
- pom.xml:4: <groupId>org.bonitasoft.bpm</groupId>
- pom.xml:11: <url>https://github.com/bonitasoft/bonita-process-model</url>
- pom.xml:13: <name>BonitaSoft S.A.</name>
- pom.xml:14: <url>https://www.bonitasoft.com/</url>
- pom.xml:21: <comments>Copyright (C) 2022 BonitaSoft S.A.
- pom.xml:22: BonitaSoft, 32 rue Gustave Eiffel - 38000 Grenoble
- pom.xml:40: <id>bonitasoft</id>
- pom.xml:41: <name>Bonitasoft</name>
- … (+15688 more)

### bonita_name (151)
- pom.xml:8: <name>Bonita Business Process Model</name>
- pom.xml:9: <description>Contains the Bonita Process Domain Logic.</description>
- README.md:3: Contains the Bonita Process Domain Logic used by Studio and related tools.
- README.md:15: Different launch configurations exist in this repository. `Build Bonita Process Model.launch` can be used to compile and
- README.md:18: In your Eclipse IDE, right-click on the launch file, `Run as -> Build Bonita Process Model`
- README.md:29: This will install all the Bonita Process Domain Logic artifacts and also a maven archetype `process-reader-archetype`.
- README.md:31: ## How to use the Bonita Process Domain model in your own work
- README.md:34: Bonita Business Process Model file.
- … (+143 more)

### github_upstream (15)
- pom.xml:11: <url>https://github.com/bonitasoft/bonita-process-model</url>
- pom.xml:56: <connection>scm:git:https://github.com/bonitasoft/bonita-process-model.git</connection>
- pom.xml:57: <developerConnection>scm:git:https://github.com/bonitasoft/bonita-process-model.git</developerConnection>
- pom.xml:59: <url>https://github.com/bonitasoft/bonita-process-model</url>
- README.md:40: * [org.bonitasoft.bpm.model](https://github.com/bonitasoft/bonita-process-model) for knowing the Bonita Process Domain
- README.md:146: workflow [Release](https://github.com/bonitasoft/bonita-process-model/actions/workflows/release.yml)
- features/org.bonitasoft.bonita2bpmn.feature/feature.xml:8: <description url="https://github.com/bonitasoft/bonita-process-model">
- features/org.bonitasoft.bonita2bar.feature/feature.xml:8: <description url="https://github.com/bonitasoft/bonita-process-model">
- … (+7 more)

### maven_groupid (56)
- pom.xml:4: <groupId>org.bonitasoft.bpm</groupId>
- tests/standalone-tests/pom.xml:5: <groupId>org.bonitasoft.bpm</groupId>
- tests/standalone-tests/pom.xml:62: <groupId>org.bonitasoft.bpm</groupId>
- tests/standalone-tests/pom.xml:68: <groupId>org.bonitasoft.bpm</groupId>
- tests/standalone-tests/src/test/resources/my-project/pom.xml:6: <groupId>org.bonitasoft</groupId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:29: <groupId>org.bonitasoft.connectors</groupId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:34: <groupId>org.bonitasoft.connectors</groupId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:57: <groupId>org.bonitasoft.actorfilter</groupId>
- … (+48 more)

### java_package (1114)
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/utils/LegacyTimerExpressionGeneratorTest.java:15: package org.bonitasoft.bpm.migration.utils;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/InstanceBuilder.java:15: package org.bonitasoft.bpm.migration.custom.migration;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/BusinessObjectTypeCustomMigrationTest.java:15: package org.bonitasoft.bpm.migration.custom.migration;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/ExpectedDurationMigrationTest.java:15: package org.bonitasoft.bpm.migration.custom.migration;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/contract/CreatePoolContractCustomMigrationTest.java:15: package org.bonitasoft.bpm.migration.custom.migration.contract;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/contract/CreateContractCustomMigrationTest.java:15: package org.bonitasoft.bpm.migration.custom.migration.contract;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/multiinstance/CallActivityInputMappingCustomMigrationTest.java:15: package org.bonitasoft.bpm.migration.custom.migration.multiinstance;
- tests/org.bonitasoft.bpm.migration.tests/src/org/bonitasoft/bpm/migration/custom/migration/callactivity/DefaultCallActivityDefaultMappingTest.java:15: package org.bonitasoft.bpm.migration.custom.migration.callactivity;
- … (+1106 more)

### bonita_artifact (27)
- pom.xml:5: <artifactId>bonita-process-model</artifactId>
- tests/standalone-tests/src/test/resources/my-project/pom.xml:7: <artifactId>bonita-project</artifactId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:14: <artifactId>bonita-common-sp</artifactId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:30: <artifactId>bonita-connector-email</artifactId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:35: <artifactId>bonita-connector-rest</artifactId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:45: <artifactId>bonita-admin-application-sp</artifactId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:58: <artifactId>bonita-actorfilter-initiator</artifactId>
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:89: <artifactId>bonita-project-maven-plugin</artifactId>
- … (+19 more)

### scm_bonitasoft (2)
- pom.xml:56: <connection>scm:git:https://github.com/bonitasoft/bonita-process-model.git</connection>
- pom.xml:57: <developerConnection>scm:git:https://github.com/bonitasoft/bonita-process-model.git</developerConnection>

### docker_bonitasoft (2)
- tests/standalone-tests/src/test/resources/my-project/app/pom.xml:214: <docker.baseImageRepository>bonitasoft.jfrog.io/docker/bonita-subscription</docker.baseImageRepository>
- tests/org.bonitasoft.bonita2bar.tests/resources/my-project/app/pom.xml:214: <docker.baseImageRepository>bonitasoft.jfrog.io/docker/bonita-subscription</docker.baseImageRepository>


## kireibpm-project-maven-plugin
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 1306

### bonitasoft_name (908)
- pom.xml:4: <groupId>org.bonitasoft.maven</groupId>
- pom.xml:10: <url>https://www.bonitasoft.com</url>
- pom.xml:13: <name>Bonitasoft</name>
- pom.xml:14: <url>https://www.bonitasoft.com</url>
- pom.xml:24: <id>bonitasoft</id>
- pom.xml:25: <name>Bonitasoft</name>
- pom.xml:26: <email>rd.user@bonitasoft.com</email>
- pom.xml:27: <organization>Bonitasoft</organization>
- … (+900 more)

### bonita_name (76)
- pom.xml:8: <name>Bonita Project Maven Plugin Parent</name>
- pom.xml:9: <description>Maven plug-in used for Bonita Project.</description>
- README.md:7: # Bonita Project Maven Plugin
- README.md:9: A Maven plug-in used by Bonita projects to:
- README.md:11: * Analyze Bonita dependencies and their content (Connector, Actor filters, Rest API Extensions...).
- README.md:14: * Validate Bonita model artifacts
- README.md:18: * Merge parameters into the Bonita configuration file
- CLAUDE.md:7: Bonita Project Maven Plugin — a multi-module Maven plugin for the Bonita Platform that handles dependency analysis, BDM code generation, artifact validation, Business Archive building, UID page buildi…
- … (+68 more)

### github_upstream (12)
- pom.xml:37: <connection>scm:git:https://github.com/bonitasoft/bonita-project-maven-plugin.git</connection>
- pom.xml:38: <developerConnection>scm:git:https://github.com/bonitasoft/bonita-project-maven-plugin.git</developerConnection>
- pom.xml:40: <url>https://github.com/bonitasoft/bonita-project-maven-plugin</url>
- README.md:1: [![Build](https://github.com/bonitasoft/bonita-project-maven-plugin/workflows/workflow-build/badge.svg)](https://github.com/bonitasoft/bonita-project-maven-plugin/actions/workflows/workflow-build.yml)
- README.md:3: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-project-maven-plugin?color=blue&label=Release)](https://github.com/bonitasoft/bonita-project-maven-plugin/releases)
- README.md:39: workflow [Release](https://github.com/bonitasoft/bonita-project-maven-plugin/actions/workflows/release.yml)
- README.md:84: Publication is done via the [Publish](https://github.com/bonitasoft/bonita-project-maven-plugin/actions/workflows/publish.yml) workflow which will build and deploy a given tag to Maven Central.
- README.md:88: Deploy the latest site version using the [Publish Maven Site](https://github.com/bonitasoft/bonita-project-maven-plugin/actions/workflows/publish-site.yml) workflow.
- … (+4 more)

### maven_groupid (116)
- pom.xml:4: <groupId>org.bonitasoft.maven</groupId>
- plugin/pom.xml:5: <groupId>org.bonitasoft.maven</groupId>
- plugin/pom.xml:48: <groupId>org.bonitasoft.engine</groupId>
- plugin/pom.xml:109: <groupId>org.bonitasoft.web</groupId>
- plugin/pom.xml:125: <groupId>org.bonitasoft.web</groupId>
- plugin/pom.xml:129: <groupId>org.bonitasoft.web</groupId>
- plugin/pom.xml:133: <groupId>org.bonitasoft.web</groupId>
- plugin/pom.xml:137: <groupId>org.bonitasoft.bpm</groupId>
- … (+108 more)

### java_package (108)
- plugin/src/test/java/org/bonitasoft/plugin/MavenSessionExecutorTest.java:17: package org.bonitasoft.plugin;
- plugin/src/test/java/org/bonitasoft/plugin/install/InstallProjectStoreMojoTest.java:17: package org.bonitasoft.plugin.install;
- plugin/src/test/java/org/bonitasoft/plugin/extension/CreateExtensionsModuleMojoTest.java:17: package org.bonitasoft.plugin.extension;
- plugin/src/test/java/org/bonitasoft/plugin/extension/impl/ExtensionsModuleGeneratorImplTest.java:17: package org.bonitasoft.plugin.extension.impl;
- plugin/src/test/java/org/bonitasoft/plugin/test/TestFiles.java:17: package org.bonitasoft.plugin.test;
- plugin/src/test/java/org/bonitasoft/plugin/analyze/DefaultArtifactAnalyzerTest.java:17: package org.bonitasoft.plugin.analyze;
- plugin/src/test/java/org/bonitasoft/plugin/analyze/IncompatibleDependencyValidatorTest.java:17: package org.bonitasoft.plugin.analyze;
- plugin/src/test/java/org/bonitasoft/plugin/analyze/AnalyzeBonitaDependencyMojoTest.java:17: package org.bonitasoft.plugin.analyze;
- … (+100 more)

### bonita_artifact (84)
- pom.xml:5: <artifactId>bonita-project-maven-plugin-parent</artifactId>
- plugin/pom.xml:6: <artifactId>bonita-project-maven-plugin-parent</artifactId>
- plugin/pom.xml:9: <artifactId>bonita-project-maven-plugin</artifactId>
- plugin/pom.xml:49: <artifactId>bonita-artifacts-model-dependencies</artifactId>
- plugin/pom.xml:143: <artifactId>bonita-project-report-model</artifactId>
- plugin/pom.xml:199: <artifactId>bonita-business-archive</artifactId>
- plugin/pom.xml:203: <artifactId>bonita-form-mapping-model</artifactId>
- plugin/pom.xml:207: <artifactId>bonita-process-definition-model</artifactId>
- … (+76 more)

### scm_bonitasoft (2)
- pom.xml:37: <connection>scm:git:https://github.com/bonitasoft/bonita-project-maven-plugin.git</connection>
- pom.xml:38: <developerConnection>scm:git:https://github.com/bonitasoft/bonita-project-maven-plugin.git</developerConnection>


## kireibpm-rest-api-extension-archetype
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 396

### bonitasoft_name (267)
- pom.xml:4: <groupId>org.bonitasoft.archetypes</groupId>
- pom.xml:10: <url>https://www.bonitasoft.com</url>
- pom.xml:13: <id>bonitasoft</id>
- pom.xml:14: <name>Bonitasoft</name>
- pom.xml:15: <email>rd.user@bonitasoft.com</email>
- pom.xml:16: <organization>Bonitasoft</organization>
- pom.xml:17: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:121: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-rest-api-extension-archetype.git</developerConnection>
- … (+259 more)

### bonita_name (68)
- pom.xml:8: <name>Bonita Rest API extension Archetype</name>
- pom.xml:9: <description>Maven archetype to bootstrap a Bonita Rest API extension project</description>
- README.md:9: * Use a JRE/JDK 1.8 or Java 11 for Bonita 7.13+, Java 17 for Bonita 10.0+
- README.md:10: * Compatible with Bonita 7.12+
- README.md:44: | -Dsp              | false | false                             | If set to true, project will use Bonita subscription dependencies. __This implies you have made bonita subscription artifacts availabl…
- src/test/resources/projects/testJavaSpProject/reference/pom.xml:19: <!-- Bonita -->
- src/test/resources/projects/testJavaSpProject/reference/pom.xml:65: <!-- Bonita -->
- src/test/resources/projects/testJavaSpProject/reference/README.adoc:23: The project **datasource** is a Bonita REST API extension for **Bonita {short-bonita-version}** version  **community** written in `java` language.
- … (+60 more)

### github_upstream (5)
- pom.xml:123: <url>https://github.com/bonitasoft/bonita-rest-api-extension-archetype</url>
- README.md:1: [![Actions Status](https://github.com/bonitasoft/bonita-rest-api-extension-archetype/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-rest-api-extension-archetype/actions?query=workflo…
- README.md:2: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-rest-api-extension-archetype?color=blue&label=Release&include_prereleases)](https://github.com/bonitasoft/bonita-rest-api-e…
- README.md:15: git clone https://github.com/bonitasoft/bonita-rest-api-extension-archetype.git
- README.md:59: [![release build](https://github.com/bonitasoft/bonita-rest-api-extension-archetype/actions/workflows/workflow-create-release.yml/badge.svg)](https://github.com/bonitasoft/bonita-rest-api-extension-ar…

### maven_groupid (25)
- pom.xml:4: <groupId>org.bonitasoft.archetypes</groupId>
- src/test/resources/projects/testJavaSpProject/reference/pom.xml:54: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testDatasourceProject7_13/reference/pom.xml:42: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testDatasourceProject7_13/reference/pom.xml:55: <groupId>org.bonitasoft.web</groupId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:54: <groupId>org.bonitasoft.runtime</groupId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:67: <groupId>org.bonitasoft.web</groupId>
- src/test/resources/projects/testKotlinProject/reference/pom.xml:73: <groupId>org.bonitasoft.web</groupId>
- src/test/resources/projects/testDatasourceProject/reference/pom.xml:55: <groupId>org.bonitasoft.web</groupId>
- … (+17 more)

### bonita_artifact (30)
- pom.xml:5: <artifactId>bonita-rest-api-extension-archetype</artifactId>
- src/test/resources/projects/testJavaSpProject/reference/pom.xml:55: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testJavaSpProject/reference/pom.xml:68: <artifactId>bonita-web-extensions-sp</artifactId>
- src/test/resources/projects/testDatasourceProject7_13/reference/pom.xml:43: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testDatasourceProject7_13/reference/pom.xml:56: <artifactId>bonita-web-extensions</artifactId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:55: <artifactId>bonita-runtime-bom</artifactId>
- src/test/resources/projects/testJava11Project/reference/pom.xml:68: <artifactId>bonita-web-extensions</artifactId>
- src/test/resources/projects/testKotlinProject/reference/pom.xml:74: <artifactId>bonita-web-extensions</artifactId>
- … (+22 more)

### scm_bonitasoft (1)
- pom.xml:121: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-rest-api-extension-archetype.git</developerConnection>


## kireibpm-rest-api-extension-user-information-example
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 31

### bonitasoft_name (20)
- organizations/ACME.organization:2: <organization:Organization xmlns:organization="http://documentation.bonitasoft.com/organization-xml-schema/1.1" name="ACME" description="The ACME organization is an example of a typical hierarchy. It …
- environements/Qualification.xml:2: <environment:Environment xmlns:environment="http://www.bonitasoft.org/ns/studio/environment" name="Qualification" description="The qualification environment contains process configurations for testing…
- environements/Production.xml:2: <environment:Environment xmlns:environment="http://www.bonitasoft.org/ns/studio/environment" name="Production" description="The production environment contains process configurations for your producti…
- restAPIExtensions/userInformationRestAPIExension/pom.xml:19: <groupId>com.bonitasoft.web</groupId>
- restAPIExtensions/userInformationRestAPIExension/src/test/groovy/com/company/rest/api/IndexTest.groovy:5: import org.bonitasoft.engine.identity.ContactData
- restAPIExtensions/userInformationRestAPIExension/src/test/groovy/com/company/rest/api/IndexTest.groovy:6: import org.bonitasoft.engine.identity.User
- restAPIExtensions/userInformationRestAPIExension/src/test/groovy/com/company/rest/api/IndexTest.groovy:7: import org.bonitasoft.web.extension.ResourceProvider
- restAPIExtensions/userInformationRestAPIExension/src/test/groovy/com/company/rest/api/IndexTest.groovy:8: import org.bonitasoft.web.extension.rest.RestApiResponseBuilder
- … (+12 more)

### bonita_name (10)
- README.md:2: This is an example of REST API extension for Bonita BPM *Enterprise Edition*.
- README.md:4: The REST API extension use Bonita BPM APIs to provide user frist name, last name and email address.
- README.md:6: This Git repository should be checkout directly from Bonita Studio: Repository -> Team -> Git -> Clone.
- README.md:9: This example has been created and built with Bonita BPM 7.4.4 Enterprise Edition.
- restAPIExtensions/userInformationRestAPIExension/pom.xml:9: <description>Query Bonita BPM Engine to retrieve user informations</description>
- restAPIExtensions/userInformationRestAPIExension/src/main/resources/page.properties:9: description=Query Bonita BPM Engine to retrieve user informations
- restAPIExtensions/userInformationRestAPIExension/src/main/groovy/com/company/rest/api/Index.groovy:91: * Returns a paged result like Bonita BPM REST APIs.
- profiles/default_profile.xml:4: <description>This is a default profile. Name and description will be translated in Bonita Portal. Do not edit the name or the description.</description>
- … (+2 more)

### bonita_artifact (1)
- restAPIExtensions/userInformationRestAPIExension/pom.xml:20: <artifactId>bonita-web-extensions-sp</artifactId>


## kireibpm-studio
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 58780

### bonitasoft_name (51462)
- pom.xml:7: <groupId>org.bonitasoft.studio</groupId>
- pom.xml:27: <!-- Must be synched with org.bonitasoft.studio.common.repository.core.maven.model.DefaultPluginVersions.MAVEN_DEPENDENCY_PLUGIN_VERSION -->
- pom.xml:47: <groupId>org.bonitasoft.maven</groupId>
- pom.xml:156: <groupId>org.bonitasoft.studio</groupId>
- pom.xml:250: <exclude>org/bonitasoft/studio/test/suite/*</exclude>
- pom.xml:251: <exclude>org/bonitasoft/studio/sp/test/suite/*</exclude>
- pom.xml:252: <exclude>org/bonitasoft/studio/test/swtbot/suite/*</exclude>
- pom.xml:253: <exclude>org/bonitasoft/studio/sp/test/swtbot/suite/*</exclude>
- … (+51454 more)

### bonita_name (2646)
- pom.xml:11: <name>Bonita Studio</name>
- README.md:1: # Bonita Studio
- README.md:3: This repository contains the source code of the Bonita Studio component from Bonita Platform.
- README.md:4: In order to build this repository it is required to build its dependencies. To help you achieve this there is a dedicated repository [here](https://github.com/Bonitasoft-Community/Build-Bonita).
- README.md:32: > :blue_book: Only the Studio part of the Bonita platform is invovled here. UI Designer and applications use other mechanisms.
- README.md:34: ### Bonita localization from Crowdin
- README.md:44: * `LOCALE_CODE` must be an available locale in the Bonita crowdin project (eg: `tr`, `vi`...etc)
- patched-plugins/org.eclipse.ui.views.properties.tabbed/src/org/eclipse/ui/internal/views/properties/tabbed/view/TabbedPropertyList.java:935: // Bonita modification: Apply the new foreground color to existing tabs (else it waits for a user action which trigger a refresh ...)
- … (+2638 more)

### github_upstream (1)
- bundles/plugins/org.bonitasoft.studio.common/src/org/bonitasoft/studio/common/databinding/validator/ValidatorFactory.java:17: // github.com/bonitasoft/bonita-studio.git

### maven_groupid (284)
- pom.xml:7: <groupId>org.bonitasoft.studio</groupId>
- pom.xml:47: <groupId>org.bonitasoft.maven</groupId>
- pom.xml:156: <groupId>org.bonitasoft.studio</groupId>
- pom.xml:265: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:270: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:275: <groupId>org.bonitasoft.engine.data</groupId>
- pom.xml:280: <groupId>org.bonitasoft.web</groupId>
- patched-plugins/pom.xml:7: <groupId>org.bonitasoft.studio</groupId>
- … (+276 more)

### java_package (4325)
- tests/org.bonitasoft.studio.test.swtbot.suite/src/org/bonitasoft/studio/test/swtbot/suite/SWTBotTestSuite.java:16: package org.bonitasoft.studio.test.swtbot.suite;
- tests/org.bonitasoft.studio.test.suite/src/org/bonitasoft/studio/test/suite/IntegrationTestSuite.java:15: package org.bonitasoft.studio.test.suite;
- tests/org.bonitasoft.studio.swtbot.framework/src/org/bonitasoft/studio/swtbot/framework/BotQAConstants.java:9: package org.bonitasoft.studio.swtbot.framework;
- tests/org.bonitasoft.studio.swtbot.framework/src/org/bonitasoft/studio/swtbot/framework/ListElementBot.java:15: package org.bonitasoft.studio.swtbot.framework;
- tests/org.bonitasoft.studio.swtbot.framework/src/org/bonitasoft/studio/swtbot/framework/ConditionBuilder.java:15: package org.bonitasoft.studio.swtbot.framework;
- tests/org.bonitasoft.studio.swtbot.framework/src/org/bonitasoft/studio/swtbot/framework/AbstractBotWizardPage.java:15: package org.bonitasoft.studio.swtbot.framework;
- tests/org.bonitasoft.studio.swtbot.framework/src/org/bonitasoft/studio/swtbot/framework/BotBase.java:9: package org.bonitasoft.studio.swtbot.framework;
- tests/org.bonitasoft.studio.swtbot.framework/src/org/bonitasoft/studio/swtbot/framework/BotDialog.java:9: package org.bonitasoft.studio.swtbot.framework;
- … (+4317 more)

### bonita_artifact (51)
- pom.xml:266: <artifactId>bonita-client</artifactId>
- pom.xml:271: <artifactId>bonita-common</artifactId>
- pom.xml:276: <artifactId>bonita-business-data-generator</artifactId>
- platform/platform.target:117: <artifactId>bonita-application-model</artifactId>
- platform/platform.target:123: <artifactId>bonita-bdm-access-control-model</artifactId>
- platform/platform.target:129: <artifactId>bonita-business-object-model</artifactId>
- platform/platform.target:135: <artifactId>bonita-organization-model</artifactId>
- platform/platform.target:141: <artifactId>bonita-profile-model</artifactId>
- … (+43 more)

### docker_bonitasoft (8)
- setups/BonitaStudio-sp.setup:77: &lt;url>https://bonitasoft.jfrog.io/artifactory/releases&lt;/url>
- setups/BonitaStudio-sp.setup:88: &lt;url>https://bonitasoft.jfrog.io/artifactory/snapshots&lt;/url>
- setups/BonitaStudio-sp.setup:108: &lt;url>https://bonitasoft.jfrog.io/artifactory/releases&lt;/url>
- setups/BonitaStudio-sp.setup:119: &lt;url>https://bonitasoft.jfrog.io/artifactory/snapshots&lt;/url>
- setups/BonitaStudio-sp.setup:152: &lt;id>bonitasoft.jfrog.io&lt;/id>
- bundles/plugins/org.bonitasoft.studio.application/src/org/bonitasoft/studio/application/maven/BonitaMavenConfigurationManager.java:54: public static final String MAVEN_URL_BAR_SERVER = "https://bonitasoft.jfrog.io/artifactory/maven";
- bundles/plugins/org.bonitasoft.studio.application/src/org/bonitasoft/studio/application/maven/BonitaMavenConfigurationManager.java:57: private static final String ARTIFACTORY_PING_URL = "https://bonitasoft.jfrog.io/artifactory/api/system/ping";
- bundles/plugins/org.bonitasoft.studio.common.repository/src/org/bonitasoft/studio/common/repository/core/maven/model/AppProjectConfiguration.java:38: private static final String ENTERPRISE_BASE_IMAGE_NAME = "bonitasoft.jfrog.io/docker/bonita-subscription";

### marketplace (3)
- bundles/plugins/org.bonitasoft.studio.application/build.properties:11: bonita-marketplace.zip,\
- bundles/plugins/org.bonitasoft.studio.application/src/org/bonitasoft/studio/application/ui/control/model/dependency/BonitaMarketplace.java:73: private static final String BONITA_MARKETPLACE_ARCHIVE_NAME = "bonita-marketplace";
- bundles/plugins/org.bonitasoft.studio.application/src/org/bonitasoft/studio/application/ui/control/model/dependency/BonitaMarketplace.java:108: var defaultMarketplace = FileLocator.toFileURL(BonitaMarketplace.class.getResource("/bonita-marketplace.zip"));


## kireibpm-super-admin-application
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 76

### bonitasoft_name (35)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:8: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:25: <groupId>org.bonitasoft.web.page</groupId>
- subscription/pom.xml:46: <groupId>org.bonitasoft.web.application</groupId>
- subscription/bos-distrib/applications/bonita-super-admin-application-sp.xml:2: <applications xmlns="http://documentation.bonitasoft.com/application-xml-schema/1.0">
- subscription/bonita-distrib/bonita-super-admin-application-sp.xml:2: <applications xmlns="http://documentation.bonitasoft.com/application-xml-schema/1.0">
- community/pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- community/pom.xml:21: <groupId>org.bonitasoft.web.page</groupId>
- … (+27 more)

### bonita_name (10)
- pom.xml:11: <name>Bonita Super Admin Applications</name>
- README.md:1: # Bonita Super Admin Application
- README.md:3: This repository aggregates all the development and distribution artifacts of the Bonita Super Admin Application
- README.md:7: * /applications contains the .bos version of the app descriptor. In this version, the UID pages tokens contain the version of the page because the UID pages are rebuilt by Bonita Studio when deploying…
- README.md:13: * a .bos archive to import in Bonita Studio
- README.md:19: * An application descriptor for the Bonita Super Admin Application
- README.md:20: * The Bonita layout as a development artifact
- README.md:24: In addition to development pages, you may also customize the default Bonita theme just by creating a new Theme in the Studio.
- … (+2 more)

### maven_groupid (26)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:8: <groupId>org.bonitasoft.web.application</groupId>
- subscription/pom.xml:25: <groupId>org.bonitasoft.web.page</groupId>
- subscription/pom.xml:46: <groupId>org.bonitasoft.web.application</groupId>
- community/pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- community/pom.xml:21: <groupId>org.bonitasoft.web.page</groupId>
- community/pom.xml:27: <groupId>org.bonitasoft.web.page</groupId>
- community/pom.xml:33: <groupId>org.bonitasoft.web.page</groupId>
- … (+18 more)

### bonita_artifact (5)
- pom.xml:7: <artifactId>bonita-super-admin-application-parent</artifactId>
- subscription/pom.xml:9: <artifactId>bonita-super-admin-application</artifactId>
- subscription/pom.xml:14: <artifactId>bonita-super-admin-application-sp</artifactId>
- subscription/pom.xml:47: <artifactId>bonita-super-admin-application</artifactId>
- community/pom.xml:7: <artifactId>bonita-super-admin-application</artifactId>


## kireibpm-theme-archetype
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 44

### bonitasoft_name (28)
- pom.xml:6: <groupId>org.bonitasoft.archetypes</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:120: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-theme-archetype.git</developerConnection>
- … (+20 more)

### bonita_name (7)
- pom.xml:11: <name>Bonita Theme Archetype</name>
- pom.xml:12: <description>Maven archetype to bootstrap a Bonita theme project</description>
- README.md:8: This project contains a maven archetype, which allow to easily setup a Bonita theme project.
- src/test/resources/projects/my-custom-theme/reference/test/README.md:7: All bootstrap javascript dependencies are already provided by the Bonita runtime environment.
- src/test/resources/projects/my-custom-theme/reference/src/scss/main.scss:1: //Bonita variables
- src/main/resources/archetype-resources/test/README.md:7: All bootstrap javascript dependencies are already provided by the Bonita runtime environment.
- src/main/resources/archetype-resources/src/scss/main.scss:1: //Bonita variables

### github_upstream (6)
- pom.xml:122: <url>https://github.com/bonitasoft/bonita-theme-archetype</url>
- README.md:1: [![Actions Status](https://github.com/bonitasoft/bonita-theme-archetype/workflows/Build/badge.svg)](https://github.com/bonitasoft/bonita-theme-archetype/actions?query=workflow%3ABuild)
- README.md:2: [![GitHub release](https://img.shields.io/github/v/release/bonitasoft/bonita-theme-archetype?color=blue&label=Release&include_prereleases)](https://github.com/bonitasoft/bonita-theme-archetype/release…
- README.md:16: git clone https://github.com/bonitasoft/bonita-theme-archetype.git
- src/test/resources/projects/my-custom-theme/reference/test/index.html:1230: <li><a href="https://github.com/bonitasoft/">GitHub</a></li>
- src/main/resources/archetype-resources/test/index.html:1230: <li><a href="https://github.com/bonitasoft/">GitHub</a></li>

### maven_groupid (1)
- pom.xml:6: <groupId>org.bonitasoft.archetypes</groupId>

### bonita_artifact (1)
- pom.xml:7: <artifactId>bonita-theme-archetype</artifactId>

### scm_bonitasoft (1)
- pom.xml:120: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-theme-archetype.git</developerConnection>


## kireibpm-ui-designer
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 5609

### bonitasoft_name (4788)
- pom.xml:5: <groupId>org.bonitasoft.web</groupId>
- pom.xml:13: <url>https://www.bonitasoft.com</url>
- pom.xml:17: <id>bonitasoft</id>
- pom.xml:18: <name>Bonitasoft</name>
- pom.xml:19: <email>rd.user@bonitasoft.com</email>
- pom.xml:20: <organization>Bonitasoft</organization>
- pom.xml:21: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:304: <connection>scm:git:git@github.com:bonitasoft/bonita-ui-designer.git</connection>
- … (+4780 more)

### bonita_name (297)
- pom.xml:11: <name>Bonita UI-Designer</name>
- pom.xml:12: <description>Wysiwyg editor for Bonita</description>
- README.md:1: # Bonita UI designer ![Build](https://github.com/bonitasoft/bonita-ui-designer-internal/workflows/Build/badge.svg)
- README.md:4: ![The WYSIWYG web editor by Bonita.](img/WysiwygUIDEditor.png)
- README.md:6: Create your own pages for your Bonita application or your own project.
- README.md:46: It is packaged in a war file and provided by default in the [Bonita Studio][studio-repo]
- README.md:48: It produces standalone AngularJs pages that are compatible with Bonita platform.
- frontend/app/js/home/help-popup.html:16: <li translate>Start creating a <b>process form</b> in Bonita Studio: from the appropriate pool or
- … (+289 more)

### github_upstream (16)
- pom.xml:305: <url>https://github.com/bonitasoft/bonita-ui-designer</url>
- README.md:1: # Bonita UI designer ![Build](https://github.com/bonitasoft/bonita-ui-designer-internal/workflows/Build/badge.svg)
- README.md:177: [studio-repo]: https://github.com/bonitasoft/bonita-studio
- README.md:180: [contributing.md]: https://github.com/bonitasoft/bonita-developer-resources/blob/master/CONTRIBUTING.MD
- frontend/package.json:123: "url": "https://github.com/bonitasoft/bonita-ui-designer.git"
- frontend/package.json:128: "url": "https://github.com/bonitasoft/bonita-ui-designer/issues"
- frontend/package.json:130: "homepage": "https://github.com/bonitasoft/bonita-ui-designer",
- tests/package.json:32: "url": "https://github.com/bonitasoft/bonita-ui-designer/issues"
- … (+8 more)

### maven_groupid (13)
- pom.xml:5: <groupId>org.bonitasoft.web</groupId>
- frontend/pom.xml:6: <groupId>org.bonitasoft.web</groupId>
- tests/pom.xml:6: <groupId>org.bonitasoft.web</groupId>
- tests/pom.xml:22: <groupId>org.bonitasoft.web</groupId>
- backend/pom.xml:7: <groupId>org.bonitasoft.web</groupId>
- backend/contract/pom.xml:4: <groupId>org.bonitasoft.web</groupId>
- backend/webapp/pom.xml:7: <groupId>org.bonitasoft.web</groupId>
- backend/webapp/pom.xml:17: <groupId>org.bonitasoft.web</groupId>
- … (+5 more)

### java_package (495)
- backend/contract/src/test/java/org/bonitasoft/web/designer/model/contract/databind/ContractDeserializerTest.java:15: package org.bonitasoft.web.designer.model.contract.databind;
- backend/contract/src/test/java/org/bonitasoft/web/designer/model/contract/builders/ContractInputBuilder.java:15: package org.bonitasoft.web.designer.model.contract.builders;
- backend/contract/src/test/java/org/bonitasoft/web/designer/model/contract/builders/ContractBuilder.java:15: package org.bonitasoft.web.designer.model.contract.builders;
- backend/contract/src/main/java/org/bonitasoft/web/designer/model/contract/Contract.java:15: package org.bonitasoft.web.designer.model.contract;
- backend/contract/src/main/java/org/bonitasoft/web/designer/model/contract/ContractInputVisitor.java:15: package org.bonitasoft.web.designer.model.contract;
- backend/contract/src/main/java/org/bonitasoft/web/designer/model/contract/LeafContractInput.java:15: package org.bonitasoft.web.designer.model.contract;
- backend/contract/src/main/java/org/bonitasoft/web/designer/model/contract/AbstractContractInput.java:15: package org.bonitasoft.web.designer.model.contract;
- backend/contract/src/main/java/org/bonitasoft/web/designer/model/contract/ContractInputContainer.java:15: package org.bonitasoft.web.designer.model.contract;
- … (+487 more)


## kireibpm-user-application
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 61

### bonitasoft_name (37)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- pom.xml:14: <url>https://www.bonitasoft.com</url>
- pom.xml:23: <id>bonitasoft</id>
- pom.xml:24: <name>Bonitasoft</name>
- pom.xml:25: <email>rd.user@bonitasoft.com</email>
- pom.xml:26: <organization>Bonitasoft</organization>
- pom.xml:27: <organizationUrl>https://www.bonitasoft.com</organizationUrl>
- pom.xml:31: <connection>scm:git:git@github.com:bonitasoft/bonita-user-application.git</connection>
- … (+29 more)

### bonita_name (10)
- pom.xml:11: <name>Bonita User Application</name>
- README.md:1: # Bonita User Application
- README.md:3: This repository aggregates all the community development artifacts of the Bonita User Application
- README.md:7: * `src/main/resources/bos-distrib` contains the .bos version of the app descriptor. In this version, the UID pages tokens contain the version of the page because the UID pages are rebuilt by Bonita St…
- README.md:13: * a .bos archive to import in Bonita Studio
- README.md:19: * An application descriptor for the Bonita User Application
- README.md:20: * The Bonita layout as a development artifact
- README.md:24: In addition to development pages, you may also customize the default Bonita theme just by creating a new Theme in the Studio.
- … (+2 more)

### github_upstream (1)
- pom.xml:33: <url>https://github.com/bonitasoft/bonita-user-application</url>

### maven_groupid (11)
- pom.xml:6: <groupId>org.bonitasoft.web.application</groupId>
- pom.xml:56: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:62: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:68: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:74: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:80: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:160: <groupId>org.bonitasoft.web.page</groupId>
- pom.xml:167: <groupId>org.bonitasoft.web.page</groupId>
- … (+3 more)

### bonita_artifact (1)
- pom.xml:7: <artifactId>bonita-user-application</artifactId>

### scm_bonitasoft (1)
- pom.xml:32: <developerConnection>scm:git:git@github.com:bonitasoft/bonita-user-application.git</developerConnection>


## kireibpm-userfilters
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 426

### bonitasoft_name (272)
- pom.xml:4: <groupId>org.bonitasoft.userfilter</groupId>
- pom.xml:11: <name>BonitaSoft</name>
- pom.xml:12: <url>http://www.bonitasoft.org</url>
- pom.xml:57: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:66: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:75: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:79: <groupId>org.bonitasoft.userfilter</groupId>
- pom.xml:194: <include>org.bonitasoft.userfilter.*</include>
- … (+264 more)

### bonita_name (3)
- pom.xml:6: <name>Bonita - User Filter</name>
- README.md:6: This project provides the Bonita Actor Filters feature.
- README.md:11: For more information see the Bonita documentation about

### github_upstream (2)
- README.md:53: [github_bonita_engine]: https://github.com/bonitasoft/bonita-engine
- README.md:54: [contributing_guide]: https://github.com/bonitasoft/bonita-developer-resources/blob/master/CONTRIBUTING.MD

### maven_groupid (50)
- pom.xml:4: <groupId>org.bonitasoft.userfilter</groupId>
- pom.xml:57: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:66: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:75: <groupId>org.bonitasoft.engine</groupId>
- pom.xml:79: <groupId>org.bonitasoft.userfilter</groupId>
- bonita-userfilter-single-user/pom.xml:7: <groupId>org.bonitasoft.userfilter</groupId>
- bonita-userfilter-single-user/bonita-userfilter-single-user-impl/pom.xml:6: <groupId>org.bonitasoft.userfilter</groupId>
- bonita-userfilter-single-user/bonita-userfilter-single-user-impl/pom.xml:15: <groupId>org.bonitasoft.userfilter</groupId>
- … (+42 more)

### java_package (22)
- bonita-userfilter-single-user/bonita-userfilter-single-user-impl/src/main/java/org/bonitasoft/userfilter/identity/SingleUserUserFilter.java:14: package org.bonitasoft.userfilter.identity;
- bonita-userfilter-initiator/bonita-userfilter-initiator-impl/src/main/java/org/bonitasoft/userfilter/initiator/ProcessInitiatorUserFilter.java:15: package org.bonitasoft.userfilter.initiator;
- bonita-userfilter-same-task-user/bonita-userfilter-same-task-user-impl/src/test/java/org/bonitasoft/userfilter/identity/SameTaskUserUserFilterTest.java:15: package org.bonitasoft.userfilter.identity;
- bonita-userfilter-same-task-user/bonita-userfilter-same-task-user-impl/src/main/java/org/bonitasoft/userfilter/identity/SameTaskUserUserFilter.java:15: package org.bonitasoft.userfilter.identity;
- bonita-userfilter-custom-user-info/bonita-userfilter-custom-user-info-impl/src/test/java/org/bonitasoft/userfilter/custom/user/info/CustomUserInfoUserFilterTest.java:1: package org.bonitasoft.userfilter.custom.user.info;
- bonita-userfilter-custom-user-info/bonita-userfilter-custom-user-info-impl/src/test/java/org/bonitasoft/userfilter/custom/user/info/UsersOfActorPageRetrieverTest.java:1: package org.bonitasoft.userfilter.custom.user.info;
- bonita-userfilter-custom-user-info/bonita-userfilter-custom-user-info-impl/src/test/java/org/bonitasoft/userfilter/custom/user/info/PageAssemblerTest.java:1: package org.bonitasoft.userfilter.custom.user.info;
- bonita-userfilter-custom-user-info/bonita-userfilter-custom-user-info-impl/src/test/java/org/bonitasoft/userfilter/custom/user/info/UsersWithCustomUserInfoPageRetrieverTest.java:1: package org.bonitasoft.userfilter.custom.user.info;
- … (+14 more)

### bonita_artifact (77)
- pom.xml:5: <artifactId>bonita-userfilter</artifactId>
- pom.xml:56: <artifactId>bonita-common</artifactId>
- pom.xml:67: <artifactId>bonita-engine</artifactId>
- pom.xml:74: <artifactId>bonita-common</artifactId>
- pom.xml:80: <artifactId>bonita-userfilter-assembly</artifactId>
- bonita-userfilter-single-user/pom.xml:6: <artifactId>bonita-userfilter</artifactId>
- bonita-userfilter-single-user/pom.xml:11: <artifactId>bonita-userfilter-single-user</artifactId>
- bonita-userfilter-single-user/bonita-userfilter-single-user-impl/pom.xml:5: <artifactId>bonita-userfilter-single-user</artifactId>
- … (+69 more)


## kireibpm-web-devtools
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 21

### bonitasoft_name (13)
- pom.xml:4: <groupId>org.bonitasoft.web.tooling</groupId>
- pom.xml:12: <connection>scm:git:git@github.com:bonitasoft/bonita-web-devtools.git</connection>
- src/main/java/org/bonitasoft/web/tools/servlet/RedirectOnParameterServlet.java:1: package org.bonitasoft.web.tools.servlet;
- src/main/java/org/bonitasoft/web/tools/jetty/H2LifeCycle.java:1: package org.bonitasoft.web.tools.jetty;
- src/main/java/org/bonitasoft/web/tools/jetty/BonitaJettyLauncher.java:2: * Copyright (C) 2012 BonitaSoft S.A.
- src/main/java/org/bonitasoft/web/tools/jetty/BonitaJettyLauncher.java:3: * BonitaSoft, 32 rue Gustave Eiffel - 38000 Grenoble
- src/main/java/org/bonitasoft/web/tools/jetty/BonitaJettyLauncher.java:17: package org.bonitasoft.web.tools.jetty;
- src/main/java/org/bonitasoft/web/tools/jetty/JettyLauncher.java:2: * Copyright (C) 2012 BonitaSoft S.A.
- … (+5 more)

### bonita_name (1)
- src/main/java/org/bonitasoft/web/tools/jetty/BonitaJettyLauncher.java:28: * Custom jetty launcher for Bonita GWT debug mode

### maven_groupid (1)
- pom.xml:4: <groupId>org.bonitasoft.web.tooling</groupId>

### java_package (5)
- src/main/java/org/bonitasoft/web/tools/servlet/RedirectOnParameterServlet.java:1: package org.bonitasoft.web.tools.servlet;
- src/main/java/org/bonitasoft/web/tools/jetty/H2LifeCycle.java:1: package org.bonitasoft.web.tools.jetty;
- src/main/java/org/bonitasoft/web/tools/jetty/BonitaJettyLauncher.java:17: package org.bonitasoft.web.tools.jetty;
- src/main/java/org/bonitasoft/web/tools/jetty/JettyLauncher.java:17: package org.bonitasoft.web.tools.jetty;
- src/main/java/org/bonitasoft/web/tools/gwt/JDTCompiler.java:17: package org.bonitasoft.web.tools.gwt;

### bonita_artifact (1)
- pom.xml:5: <artifactId>bonita-web-devtools</artifactId>


## kireibpm-web-pages
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 136

### bonitasoft_name (114)
- README.md:12: * install the UI Designer as described in the [UI Designer repostiory](https://github.com/bonitasoft/bonita-ui-designer)
- build.gradle:2: id 'com.bonitasoft.gradle.bonita-release' version '0.1.42'
- build.gradle:5: apply plugin: 'com.bonitasoft.gradle.bonita-uid'
- build.gradle:19: group 'org.bonitasoft.web.pages'
- page-process-list/src/lang.js:2: * Copyright (C) 2018 Bonitasoft S.A.
- page-process-list/src/lang.js:3: * Bonitasoft, 32 rue Gustave Eiffel - 38000 Grenoble
- page-process-list/src/index.js:2: * Copyright (C) 2018 Bonitasoft S.A.
- page-process-list/src/index.js:3: * Bonitasoft, 32 rue Gustave Eiffel - 38000 Grenoble
- … (+106 more)

### bonita_name (18)
- README.md:1: # Bonita web pages
- README.md:3: Contains Bonita Portal web pages.
- page-process-list/src/common/Client.js:26: const csrfToken = cookie.getValue('X-Bonita-API-Token');
- page-process-list/src/common/Client.js:28: ? { ...OPTIONS.headers, 'X-Bonita-API-Token': csrfToken }
- page-process-list/src/common/Client.test.js:89: document.cookie = 'X-Bonita-API-Token=6966c161-1363-4526-b0bd-78e02225415b';
- page-process-list/src/common/Client.test.js:96: 'X-Bonita-API-Token': '6966c161-1363-4526-b0bd-78e02225415b'
- page-process-list/src/common/Client.test.js:103: document.cookie = 'X-Bonita-API-Token=6966c161-1363-4526-b0bd-78e02225415b';
- page-process-list/src/common/Client.test.js:110: 'X-Bonita-API-Token': '6966c161-1363-4526-b0bd-78e02225415b'
- … (+10 more)

### github_upstream (4)
- README.md:12: * install the UI Designer as described in the [UI Designer repostiory](https://github.com/bonitasoft/bonita-ui-designer)
- uid-pages/package.json:13: "url": "https://github.com/bonitasoft/bonita-web-pages/issues"
- uid-pages/package.json:15: "homepage": "https://github.com/bonitasoft/bonita-web-pages",
- uid-pages/package.json:18: "url": "https://github.com/bonitasoft/bonita-web-pages"


## kireibpm-widget-builder
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 4

### bonitasoft_name (4)
- test/widget-builder.spec.js:23: return angular.module('bonitasoft.ui.widgets');
- test/widget-builder.spec.js:25: return angular.module('bonitasoft.ui.widgets', []);
- src/widgetDirectiveTemplate.hbs.js:3: return angular.module('bonitasoft.ui.widgets');
- src/widgetDirectiveTemplate.hbs.js:5: return angular.module('bonitasoft.ui.widgets', []);


## kireibpm-widget-contrib
- LICENSE at repo root: yes
- NOTICE at repo root: no
- Total matches: 7

### bonitasoft_name (6)
- package.json:5: "author": "bonitasoft",
- package.json:8: "url": "https://github.com/bonitasoft/bonita-widget-seed.git"
- package.json:31: "widget-builder": "bonitasoft/widget-builder#1.0.0",
- src/test/runtime.mock.js:1: angular.module('bonitasoft.ui.filters', [])
- src/widgets/customWidget/test/widget.spec.js:11: 'bonitasoft.ui.widgets',
- src/widgets/customWidget/test/widget.spec.js:12: 'bonitasoft.ui.filters'

### github_upstream (1)
- package.json:8: "url": "https://github.com/bonitasoft/bonita-widget-seed.git"


## Totals
Repos scanned: 50
Repos with matches: 50

- bonitasoft_name: 122634
- java_package: 11598
- bonita_name: 4524
- maven_groupid: 794
- bonita_artifact: 433
- github_upstream: 208
- scm_bonitasoft: 42
- marketplace: 20
- docker_bonitasoft: 12

# ohtu-miniprojekti2021 

![workflow](https://github.com/nothros/ohtu-miniprojekti2021/actions/workflows/main.yml/badge.svg)
 [![codecov](https://codecov.io/gh/nothros/ohtu-miniprojekti2021/branch/main/graph/badge.svg?token=T5B64DEFPH)](https://codecov.io/gh/nothros/ohtu-miniprojekti2021)

## Käyttö

Linux: ```$gradle run``` tai ``` ./gradlew run``` 

Windows: ``` $gradlew.bat run ```

**JAR-tiedoston luonti** ``` ./gradlew shadowJar``` 

## Testaus 

**Testit** ``` $gradle test``` tai ``` ./gradlew test```

**Checkstyle** ``` $gradle checkstyleMain``` tai ``` ./gradlew checkstyleMain```

**jacoco** ``` $gradle jacocoTestReport``` tai ``` ./gradlew jacocoTestReport```


## Definition of done

- Automaattisessa yksikkötestauksessa edellytämme 70% rivi- ja haaraumakattavuutta.
- Testien tulee olla relevantteja ja selkeästi luettavia. Niiden pitää mennä läpi lokaalisti ja GitHub Actionissa.
- Ylläpidämme koodin luettavuutta Checkstyle:n avulla. 
- Luokka- ja metodijaon tulee olla järkevä.
- Ohjelma ei hajoa sitä käytettäessä

## Backlog

[Backlog](https://docs.google.com/spreadsheets/d/1Mqu61MkBKXb47hqxVo3GOnbK3Os7-lqfA4JLydHTWgk/edit?usp=sharing)

# Gradle

## Riippuvuuksia
Riippuvuudet lisätään ```build.gradle```-tiedostoon. [Lisätietoa](https://docs.gradle.org/current/userguide/dependency_management_for_java_projects.html).

Mukana:
- [JDBC](https://github.com/xerial/sqlite-jdbc)
- [JavaFX](https://openjfx.io/)
- [TestFX](https://github.com/TestFX/TestFX)
- [Cucumber](https://cucumber.io/)


## Tiedostorakenne
```
.
├── app
│   ├── bookcase.db
│   ├── build.gradle
│   └── src
│       ├── main
│       │   └── java
│       │       ├── bookcase
│       │       │   ├── App.java
│       │       │   ├── domain
│       │       │   │   └── LibraryService.java
│       │       │   └── ui
│       │       │       └── AppUi.java
│       │       └── database
│       │           ├── CourseObject.java
│       │           ├── DAO.java
│       │           ├── LibraryObjectDAO.java
│       │           └── LibraryObject.java
│       └── test
│           ├── java
│           │   ├── bookcase
│           │   │   ├── AppTest.java
│           │   │   ├── domain
│           │   │   │   └── ServiceTest.java
│           │   │   ├── Stepdefs.java.txt
│           │   │   └── ui
│           │   │       └── AppUiTest.java
│           │   └── database
│           │       └── LibraryObjectDaoTest.java
│           └── resources
│               ├── bookcase
│               │   └── startup.feature
│               └── cucumber.properties
├── config
│   └── checkstyle
│       ├── checkstyle.xml
│       └── suppressions.xml
├── gradle
│   └── wrapper
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
├── gradlew
├── gradlew.bat
├── README.md
└── settings.gradle
``

# Set Up the Spring Legacy Project Environment

## Set UpJava Development Kit
- This document is based on Java Development Kit 1.8

### 1. Install SDKMAN!

```bash
curl -s "https://get.sdkman.io" | bash
```

- Trouble Shooting: 

  - If you encounter the following error message, please install unzip.

```
Please install unzip on your system using your favourite package manager.
```

```bash
sudo apt update
sudo apt install unzip
sudo apt install zip
```

### 2. Prepare the environment to use SDKMAN!

```bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

### 3. Check available JDK versions to use SDKMAN!

```bash
sdk list java
```

### 4. Install JDK 8.0.452-zulu version to use SDKMAN!

```bash
sdk install java 8.0.452-zulu
```

### 5. Set JDK 8.0.452-zulu version to use SDKMAN! Globally

```bash
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

## Initialize Java Project with Maven in Visual Studio Code

### 1. Install Extension for Visual Studio Code

- Extension Pack for Java (★)
- Better Comments
- indent-rainbow
- Material Icon Theme

### 2. Install Maven

```bash
sudo apt install maven
```

### 3. Check Maven version

```bash
mvn --version
```

### 4. Initialize Java Project with Maven

- groupId: com.sample
- artifactId: community-legacy
- archetypeArtifactId: spring-mvc-archetype
- archetypeGroupId: org.springframework
- archetypeVersion: 1.0.9
- interactiveMode: false

```bash
mvn archetype:generate \
  -DgroupId=com.sample \
  -DartifactId=community-legacy \
  -DarchetypeArtifactId=maven-archetype-webapp \
  -DarchetypeGroupId=org.apache.maven.archetypes \
  -DarchetypeVersion=1.4 \
  -DinteractiveMode=false
```

---

## Execute Spring Legacy Project

### 1. Check available tomcat versions to use SDKMAN!

```bash
sdk list tomcat
```

### 2. Install Tomcat 9.0.88 version to use SDKMAN!

```bash
sdk install tomcat 9.0.88
```

### 3. Set Tomcat 9.0.88 version to use SDKMAN!

```bash
sdk use tomcat 9.0.88
```

### 4. Add tomcat7 plugin to pom.xml

```xml
<plugin>
  <groupId>org.apache.tomcat.maven</groupId>
  <artifactId>tomcat7-maven-plugin</artifactId>
  <version>2.2</version>
  <configuration>
    <port>8080</port>
    <path>/</path>
  </configuration>
</plugin>
```

### 5. Execute Spring Legacy Project

```bash
mvn tomcat7:run
```
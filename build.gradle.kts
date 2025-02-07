plugins {
    id("org.springframework.boot") version "3.2.3"
    id("io.spring.dependency-management") version "1.1.4"
    kotlin("jvm") version "1.9.22"
    kotlin("plugin.spring") version "1.9.22"
}

kotlin {
    jvmToolchain(17) // ✅ `java.toolchain` を削除し、Kotlin のみに統一
}

dependencies {
    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("org.jetbrains.kotlin:kotlin-reflect")
    implementation("org.springframework.boot:spring-boot-starter-data-jpa")
    implementation("org.springframework.boot:spring-boot-starter-security")
    implementation("org.springframework.boot:spring-boot-starter-validation")

    // ✅ jjwt を最新化
    implementation("io.jsonwebtoken:jjwt-api:0.12.5")
    implementation("io.jsonwebtoken:jjwt-impl:0.12.5")
    implementation("io.jsonwebtoken:jjwt-jackson:0.12.5")

    // ✅ PostgreSQL のドライバは `runtimeOnly`
    runtimeOnly("org.postgresql:postgresql")

    // ✅ 開発専用の DevTools
    developmentOnly("org.springframework.boot:spring-boot-devtools")
}

group = "com.harmonytune"
version = "0.0.1-SNAPSHOT"

repositories {
    mavenCentral()
}

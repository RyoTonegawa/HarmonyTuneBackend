# ベースイメージ（JVM 用）
FROM quay.io/quarkus/quarkus-jvm:latest AS build

# 作業ディレクトリ
WORKDIR /app

# ソースコードをコピー
COPY . .

# Quarkus アプリをビルド
RUN ./mvnw package -DskipTests

# 軽量なランタイムイメージ
FROM eclipse-temurin:17-jre

WORKDIR /app

# ビルドした JAR をコピー
COPY --from=build /app/target/quarkus-app/quarkus-run.jar app.jar

# アプリケーションのポート
EXPOSE 8080

# アプリケーションを起動
ENTRYPOINT ["java", "-jar", "app.jar"]

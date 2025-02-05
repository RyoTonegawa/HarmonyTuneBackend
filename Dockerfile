# ベースイメージ
FROM eclipse-temurin:17-jdk AS build

# 作業ディレクトリを作成
WORKDIR /app

# 必要なファイルをコピー
COPY . .

# Gradle キャッシュを活用してビルドを最適化
RUN ./gradlew clean build -x test

# 最小限のランタイムイメージを使用
FROM eclipse-temurin:17-jre

WORKDIR /app

# ビルドされた JAR ファイルをコピー
COPY --from=build /app/build/libs/*.jar app.jar

# アプリケーションのポートを指定
EXPOSE 8080

# アプリケーションを起動
ENTRYPOINT ["java", "-jar", "app.jar"]

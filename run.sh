# Using 7.18.0
# npm install @openapitools/openapi-generator-cli -g

FILE_NAME="cloud-swagger.json"
NEW_VERSION="0.5.4"
GENERATOR="openapi-generator-cli-7.9.0.jar"

if [ ! -f ".swagger/$FILE_NAME" ]; then
    echo "Ошибка: .swagger/$FILE_NAME не найден!"
    exit 1
fi

if [ ! -f "genConfig.yml" ]; then
    echo "Ошибка: genConfig.yml не найден!"
    exit 1
fi

echo "Начало генерации API клиента..."

# Обновление версии в genConfig.yml
sed -i "s/\projectVersion: \".*\"/\projectVersion: \"$NEW_VERSION\"/" genConfig.yml

# Очистка предыдущей генерации
echo "Очистка предыдущей генерации..."
rm -rf new

# Генерация API клиента
echo "Генерация API клиента..."
java -jar .vendor/$GENERATOR generate \
  -i .swagger/$FILE_NAME \
  -g swift5 \
  -o new \
  --skip-validate-spec \
  -c genConfig.yml


if [ -d "Sources" ]; then
    echo "  🗑️  Removing old Sources/ directory"
    rm -rf "Sources"
fi

if [ -d "docs" ]; then
    echo "  🗑️  Removing old docs/ directory"
    rm -rf "docs"
fi

echo "  📋 Copying Sources/ ..."
cp -r "new/Sources" "."

echo "  📋 Copying docs/ ..."
cp -r "new/docs" "."

cp -r new/README.md README-NEW.MD

# Modify IFilter enum to be indirect
sed -i 's/public enum IFilter: Codable, JSONEncodable, Hashable {/public indirect enum IFilter: Codable, JSONEncodable, Hashable {/' Sources/Models/IFilter.swift

# Modify CollectionFilterFilterOneOf enum to be indirect
sed -i 's/public enum CollectionFilterFilterOneOf: Codable, JSONEncodable {/public indirect enum CollectionFilterFilterOneOf: Codable, JSONEncodable {/' Sources/Models/IFilter.swift



cp .migration/CollectionFilter.swift Sources/Models/CollectionFilter.swift

./update-docs.sh

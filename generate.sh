mkdir generated
cd generated

openapi-generator-cli generate -i  https://team-okp8.testit.software/swagger/v2/swagger.json -g swift5 --skip-validate-spec -o  . --additional-properties=swiftPackagePath=Sources,projectName=TestitApiClient,nonPublicApi=false

if [ -d "../Sources" ]; then
    echo "  🗑️  Removing old Sources/ directory"
    rm -rf "../Sources"
fi

if [ -d "../docs" ]; then
    echo "  🗑️  Removing old docs/ directory"
    rm -rf "../docs"
fi

echo "  📋 Copying Sources/ ..."
cp -r "Sources" "../"

echo "  📋 Copying docs/ ..."
cp -r "docs" "../"

echo "  📋 Copying Readme ..."
cp -r "README.md" "../"


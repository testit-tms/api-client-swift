## How to reproduce api installation?


1. Install openapi-generator using scoop https://scoop.sh for powershell (Note: js version unfortunately had bad log with broken cyrillic) :
```
    scoop install openapi-generator-cli
    scoop bucket add java
    scoop install openjdk
```
2. 
```
openapi-generator-cli generate -i  https://team-okp8.testit.software/swagger/v2/swagger.json -g swift5 --skip-validate-spec -o  ($PWD).path --additional-properties=swiftPackagePath=src,projectName=ruTestitApiClient,nonPublicApi=true
```

// https://openapi-generator.tech/docs/generators/swift5/
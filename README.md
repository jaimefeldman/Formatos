![formatos](https://user-images.githubusercontent.com/2141335/160247756-8b652342-bc8b-471e-9cd8-a9c0a527dfcb.png)
`Formatos` Implementa una serie métodos para formatear números de manera directa.
## Instalación 
___
### Swift Package Manager 
Para la instalacion manual de paquetes solo se debe añadir la url de este repositorio y el nombre de la dependencia al archivo Package.swift:

```swift
import PackageDescription

let package = Package(
    name: "YourAwesomeSoftware",
    dependencies: [
        .package(url: "https://github.com/jaimefeldman/Formatos.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MyApp",
            dependencies: ["Formatos"]
        )
    ]
)
```

Luego desde la terminal:
```terminal
$ swift build
```
Esto descargará el paquete con sus dependencias, para posteriormente construirlo.

Una vez descargado es posible ejecutarlo desde la terminal:

```temrinal
$ swift run
```
___
# Uso Básico

### Agregando formatos a cualquier número de forma directa.

```swift
import Formatos

10000.scientificFormat
10000.numberFormat
10000.hexFormat
10000.binaryFormat
10000.moneyFormatCLP
10000.moneyFormatUSD
10000.moneyFormatEuro
10000.moneyFormatUF
10000.moneyFormatYEN
10000.moneyFormatRBR
10000.moneyFormatRUB
10000.moneyFormatGBP

```
---
## License
`Formatos`  está publicado bajo la licencia MIT.

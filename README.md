## Desafio

[![N|Solid](https://scontent.ffor4-2.fna.fbcdn.net/v/t1.6435-9/46747993_1930266200425997_1278428545009319936_n.png?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qhKel4aqlrkAX8BwaHj&_nc_ht=scontent.ffor4-2.fna&oh=00_AT-L8eOpXrUH0kaQmaX_8L46ltAR1kTr2HbsyR8-oKEKjQ&oe=6345FF6F)](https://www.wit-software.com/)


## Descrição

##### A tarefa consiste em desenvolver uma app para mostrar o tempo na tua localização actual e de 10 cidades europeias: Lisboa, Madrid, Paris, Berlim, Berna, Roma, Londres, Dublin, Praga e Viena. UI e funcionalidades (extra) ficam ao teu critério.

- [x] 2 ecrãs: um com a listagem das cidades e outro ecrã com dados meteorológicos
    Usado os componentes nativos que o framework Flutter disponibiliza.
- [x] Utilizar a API do openweathermap
    Utilizado o pacote DIO para consumo da API
- [x] UIs
    Com objetivo de cumprir os requisitos no menor prazo possível, não foi investido muito tempo na criação de belas UIs. Foco apenas no mais funcional e usado os componentes que o framework Flutter disponibilza.
- [x] Problemas externos
    Apenas tratado um erro genérico caso a API retorne algo diferente do esperado. Somente com o intuito de gerenciamento de estado.

## Ambiente

```sh
flutter doctor -v
```
> [✓] Flutter (Channel stable, 3.0.5, on macOS 12.4 21F79 darwin-arm, locale
    pt-BR)
    • Flutter version 3.0.5 at /Users/seventh/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision f1875d570e (9 weeks ago), 2022-07-13 11:24:16 -0700
    • Engine revision e85ea0e79c
    • Dart version 2.17.6
    • DevTools version 2.12.2

> [✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
    • Android SDK at /Users/seventh/Library/Android/sdk
    • Platform android-33, build-tools 31.0.0
    • Java binary at: /Applications/Android
      Studio.app/Contents/jre/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build
      11.0.12+0-b1504.28-7817840)
    • All Android licenses accepted.

> [✓] Xcode - develop for iOS and macOS (Xcode 13.3.1)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • CocoaPods version 1.11.2

> [✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

> [✓] Android Studio (version 2021.2)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build
      11.0.12+0-b1504.28-7817840)

> [✓] VS Code (version 1.71.0)
    • VS Code at /Applications/Visual Studio Code.app/Contents
    • Flutter extension version 3.48.0

> [✓] Connected device (4 available)
    • Mi Note 10 Lite (mobile) • acd36229                             •
      android-arm64  • Android 12 (API 31)
    • iPhone 11 (mobile)       • F85EEE29-5B82-4444-AEA9-0144E11B598E • ios
      • com.apple.CoreSimulator.SimRuntime.iOS-15-2 (simulator)
    • macOS (desktop)          • macos                                •
      darwin-arm64   • macOS 12.4 21F79 darwin-arm
    • Chrome (web)             • chrome                               •
      web-javascript • Google Chrome 105.0.5195.102

> [✓] HTTP Host Availability
    • All required HTTP hosts are available

## Pacotes
| Plugin | README |
| ------ | ------ |
| Dio | [https://pub.dev/packages/dio][PlD] |
| Flutter Bloc | [https://pub.dev/packages/flutter_bloc][PlB] |
| Location | [https://pub.dev/packages/location][PlL] |
| GetIt | [https://pub.dev/packages/get_it][PlG] |

## Proposta

O app é composto por 2 telas:
[x] Home
A Home é onde é exibida a atual localização do usuário seguido das outras localizações citadas no desafio
[x] Weather Details
A Weather Details é onde é exibido ao usuário as informações obtidas no retorno da API.
[x] Error
Em caso de erro na consulta da API, é exibido uma mensagem de feedback e um botão para recarregar a página no centro da tela.

## Critérios Avaliativos

> Cumprido todos os pré requisitos do app conforme descrito no desafio.

> Projeto organizado conforme boas práticas de desenvolvimento.

> Utilização do Cubit(BLoC) de acordo com os padrões de desenvolvimento.

> Com foco no cumprimento dos prazos, não foi dado o foco em UIs sofisticadas. Apenas utilizado os componentes disponibilizados pelo framework Flutter.

> O projeto foi desenvolvido em aproximadamente 6 horas.

## Testes

Criado o teste de unidade da conexão com a API. Para que esse tenha resultado positivo, pode retornar dois tipos de variáveis, uma `WeatherModel` caso sucesso na consulta da API, `null` ou um `int` caso falha.


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [DIO]: <https://pub.dev/packages/dio>
   [Shimmer]: <https://pub.dev/packages/shimmer>

   [PlD]: <https://pub.dev/packages/dio>
   [PlB]: <https://pub.dev/packages/flutter_bloc>
   [PlL]: <https://pub.dev/packages/location>
   [PlG]: <https://pub.dev/packages/get_it>

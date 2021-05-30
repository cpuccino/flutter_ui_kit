```
╔═╗╦  ╦ ╦╔╦╗╔╦╗╔═╗╦═╗  ╔═╗╔╦╗╔═╗╦═╗╔╦╗╔═╗╦═╗
╠╣ ║  ║ ║ ║  ║ ║╣ ╠╦╝  ╚═╗ ║ ╠═╣╠╦╝ ║ ║╣ ╠╦╝
╚  ╩═╝╚═╝ ╩  ╩ ╚═╝╩╚═  ╚═╝ ╩ ╩ ╩╩╚═ ╩ ╚═╝╩╚═
```                                                         

Use this template to start up a new flutter project

**Note that these are just guidelines**

### Setup

- Clone the repo with `git clone git@github.com:cpuccino/flutter_starter.git`
- Remove .git and reset the version in pubspec
- [Rename](https://pub.dev/packages/rename) the project and update it's bundle id using
  ```
  pub global activate rename
  rename --bundleId "com.cpuccino.appname"
  rename --appname "App Name"
  ```

### Project structure

```
lib
  │
  ├── config
  |   ├── application_config.dart // Application specific configuration & metadata ex:  application name, version info
  |   ├── colors_config.dart // Define colors used within the app 
  |   ├── fonts_config.dart // Define fonts used within the app (styles and size)
  |   ├── gutters_config.dart // Defines margin and padding used within the app
  |   └── media_config.dart // Defines screensizes to be used within the app ex: xxs: 350, xs: 500, s: 750, m: 1000, l: 1300, xl: 1500, xxl: 2000
  |
  ├── controllers // state management (controllers, providers, blocs)
  |   ├── authentication_controller.dart
  |   ├── authorization_controller.dart
  |   └── etc...
  |
  ├── domain // app specific logic
  |   ├── auth
  |   |   ├── src
  |   |   |   ├── authentication.dart
  |   |   |   ├── authorization.dart
  |   |   |   └── etc...
  |   |   └── auth.dart // exports everything in the auth src
  |   └── etc...
  |
  ├── components // follows atomic design https://atomicdesign.bradfrost.com
  |   ├── atom
  |   ├── molecule
  |   └── organism
  |
  └── screens
      ├── home_screen.dart
      └── etc...
```


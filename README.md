# banking_app
- [banking\_app](#banking_app)
  - [Dev Environment](#dev-environment)
  - [Getting Started](#getting-started)
    - [Got Error?](#got-error)
  - [Directory Structure](#directory-structure)
  - [Sources](#sources)

## Dev Environment

Flutter 3.3.8 • channel stable • [https://github.com/flutter/flutter.git](https://github.com/flutter/flutter.git)   
Framework • revision 52b3dc25f6 (4 months ago) • 2022-11-09 12:09:26 +0800  
Engine • revision 857bd6b74c  
Tools • Dart 2.18.4 • DevTools 2.15.0

## Getting Started

This project is a starting point for a Flutter application.
1. ### Install Flutter 3.3.8
   Download from here: https://docs.flutter.dev/release/archive
2. ### Set up the environment following the official instructions
    - Mac: https://docs.flutter.dev/get-started/install/macos
    - Windows: https://docs.flutter.dev/get-started/install/windows
    - Linux: https://docs.flutter.dev/get-started/install/linux
3. ### Make sure using Flutter 3.3.8
   ```shell
   flutter --version
   ```
   output:
   ```shell
   Flutter 3.3.8 • channel stable • https://github.com/flutter/flutter.git
   Framework • revision 52b3dc25f6 (6 months ago) • 2022-11-09 12:09:26 +0800
   Engine • revision 857bd6b74c
   Tools • Dart 2.18.4 • DevTools 2.15.0
   ```
4. ### Download the source code
    Git clone
    ```shell
    git clone https://github.com/NauSakaguchi/banking_app.git
    ```
5. ### Run Flutter app
```shell
flutter run -d {device ID}
```

### Got Error?
A few resources to get you started if this is your first Flutter project:
- [Message "flutter run: No connected devices"](https://stackoverflow.com/questions/49045393/message-flutter-run-no-connected-devices)
- [How to specify a device id in flutter?](https://stackoverflow.com/questions/49684621/flutter-how-to-specify-a-device-id-in-flutter)
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Directory Structure

- **android**: This folder is automatically generated when you create a Flutter project. It contains settings and source files related to Android.
- **ios**: This folder is automatically generated when you create a Flutter project. It contains settings and source files related to iOS.
- **assets**: This folder stores assets related to the app, such as images and JSON files containing necessary information for the app.

    - **component**: Manages common UI elements in the app and stores reusable UI components.
    - **constant**: Manages constants used in the app, similar to Resources in Android. Common files stored in the `constant` folder include:
        - *strings.dart*: Defines strings used in the app. It is primarily used to avoid hardcoding strings.
        - *urls.dart*: Manages URLs used in the app, also used to avoid hardcoding.
        - *colors.dart*: Defines colors used in the app and custom material colors.
    - **router**: Manages classes responsible for screen transitions in the app. These classes are only called from views. Views only need to pass their context to navigate to the desired screen, delegating all transition processes to this class.
    - **core**: Manages core classes of the app, such as Firebase Timestamp and Datetime converters, or app-wide loggers.
    - **ui_core**: Manages classes with core UI functionalities. Examples include date type and date string conversion (display string generation), input form trim processing, and input form validators.
    - **infrastructure**: Handles API communication and database management. Contains classes that perform actual communication, such as API classes. Used by passing them to Repository class constructors.
    - **model**: Manages app type definition classes. Adheres to the immutable concept by using the `freezed` package. Also stores auto-generated files from `freezed`. Additionally, a `ui` subfolder stores UI state models that represent the UI's state. Views monitor this UI state and switch displays based on the state.
    - **provider**: Manages providers that supply ViewModel and Repository. State management primarily uses the `riverpod` package.
    - **view**: Manages classes that make up the app's screens, such as the home screen, settings screen, and registration screen. Views build the UI by referencing Component classes. UI button events and other actions typically call methods defined in the ViewModel.
    - **view_model**: Manages classes that hold the app's UI state and convert data to be displayed on the screen. Calls functions defined in the Provider, processes data, and updates its own UI state. When the UI state is updated, the view's `build` function is called, and the display is automatically changed. Functions defined in the ViewModel are called from the view.

- **main.dart**: This is the top-level (entry point) file of the app. It often handles tasks such as Firebase initialization, env file reading, and setting up the riverpod scope.
- **test**: This folder manages unit test (UT) code. It generally follows the folder structure of the `lib` folder to uniquely identify the product code's UT code.


## Sources
- [logo image](https://pngtree.com/freepng/concept-banking-logo_4017929.html)
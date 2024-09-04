# e.GO App
## Application Built for Interview in e.GO Mobile

Welcome to the e.Go Connect App, your gateway to a seamless and connected driving experience. Designed to complement the innovative e.Go electric vehicles, our mobile application brings forth a new era of convenience, intelligence, and control for every e.Go owner.

## Features

- Comprehensive Car Details:
  Unlock a deeper understanding of your e.Go vehicle with detailed insights. Access information such as vehicle last connection, battery, and eco score of your car. Stay informed about essential details, ensuring a holistic view of your e.Go at all times. Your distance, travel time of today, your vehicle total milleage and range left on charge.

- Stay Informed with e.Go News:
  Explore the latest developments and announcements from the e.Go Mobile. Receive timely updates, news articles, and exclusive content directly within the app. Stay connected to the e.Go community and be the first to know about exciting innovations and events.

- Discover Nearby Charging Stations:
  Navigate the charging landscape effortlessly. The Explore section of the app provides a comprehensive map of nearby charging stations, ensuring you're never far from a convenient power source. Plan your routes with confidence, making electric vehicle ownership even more convenient.

- Locate Your Vehicle with Ease:
  Whether in a bustling city or a vast parking lot, find your e.Go effortlessly. The app's vehicle locator feature guides you to your parked car, making every return stress-free and ensuring you're always in control of your vehicle's whereabouts.

- Service Center Locator:
  Access a network of e.Go service centers seamlessly. In the unfortunate event that your e.Go requires attention, use the app to locate the nearest service center. Schedule appointments, track service progress, and ensure your e.Go stays in peak condition.

- Multilingual Support:
  Tailoring the e.Go Connect App to your preferences, it is available in both English and German. Enjoy a personalized experience with language options that cater to a diverse user base, providing a user interface that feels familiar and accessible.

- Remote Control Functionality:
  Take control from the palm of your hand. The e.Go Connect App's remote control feature empowers you to interact with your vehicle remotely. Lock and unlock doors, adjust climate settings, and activate features, all with the convenience of your mobile device.

Welcome to a new era of connected, intelligent driving with the e.Go App — where every feature is designed to enhance your e.Go experience and make electric mobility an effortless and enjoyable part of your everyday life.

## Tech

e.GO App use flutter to work properly:

- [Flutter](https://flutter.dev/) - Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows.

## Installation

Flutter requires [Flutter](https://flutter.dev/) v3+ to run.

Install the dependencies and run the application in emulator.

```sh
flutter clean
flutter pub get
flutter run
```
#### Building APK

For building apk file:

```sh
flutter build apk
```

For building IOS File for TestFlight:

```sh
flutter build ios
```

Open iOS folder in Xcode, and archieve app and then distribute

#### Run Project on MacBook

- Download and Install [Flutter SDK](https://docs.flutter.dev/get-started/install/macos) to run
- Extract the downloaded archive and add the flutter/bin directory to your system's PATH.
- Install XCode from App Store of the MacBook.
- Choose an IDE: You can use either [VSCode](https://code.visualstudio.com/download) with Flutter extention or [Android Studio](https://developer.android.com/studio/install) with the Flutter plugin
- Open IDE, select the project you want to run.
- Check your Flutter installation with 'flutter doctor' command
```sh
flutter doctor
```
- Connect a Device or Use an Emulator: Connect a physical device (iOS/Android) to your Mac, or open an emulator. For iOS, you can use the iOS Simulator that comes with Xcode.
- Open iOS Simulator: After installing any necessary components, go to the "Xcode" menu and select "Preferences.". In the Preferences window, go to the "Locations" tab. Look for the "Command Line Tools" dropdown and select the latest version of Xcode. Close the Preferences window. Now, you can open the iOS Simulator by going to "Xcode" > "Open Developer Tool" > "Simulator.". In the iOS Simulator, you can choose the iOS device you want to simulate. The device options can be found in the top menu bar under "Hardware" > "Device."
- Clean old build files or packages
```sh
flutter clean
flutter pub get
```
- Select device/emulator on your IDE, on which you want to run project.
- Now you can run project. Run the following commands:
```sh
flutter run
```

## License

e.GO Mobile

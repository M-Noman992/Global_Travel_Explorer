# Global Travel Explorer

Global Travel Explorer is a Flutter application designed to provide users with comprehensive information about famous global landmarks, including their historical background, recommended activities, and the best times to visit.

## Features
* Famous Places List: Provides a curated list of landmarks such as Lahore Fort, Eiffel Tower, Great Wall of China, Taj Mahal, and the Statue of Liberty.
* Detailed Information: Each location has a dedicated detail screen showing history, things to do, and seasonal travel advice.
* User Interface: Features a clean card-based design and list views for efficient navigation.
* Local Image Assets: High-quality images are integrated locally within the application for offline accessibility.

## Project Structure
The project follows a standard Flutter architecture:
* lib/: Contains the core source code, including travelguideapp.dart and the primary UI screens.
* assets/: Stores all local image files required for the application.
* pubspec.yaml: Manages project dependencies and asset registration.

## How to Run the App

### 1. Requirements
* Flutter SDK must be installed and configured on your local machine.
* An IDE such as Visual Studio Code or Android Studio is recommended.

### 2. Execution Steps
1. Open Project: Open the root folder of the project in your code editor.
2. Install Dependencies: Execute the following command in the terminal to fetch the necessary packages:
   flutter pub get
3. Verify Assets: Ensure that the assets folder is correctly listed in the pubspec.yaml file:
   flutter:
     uses-material-design: true
     assets:
       - assets/
4. Launch Application: Connect a physical device or start an emulator, then execute:
   flutter run

## Technologies Used
* Framework: Flutter
* Language: Dart
* Navigation: Material PageRoute

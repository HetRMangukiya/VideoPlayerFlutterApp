# Flutter GetX Video Player with Fullscreen and Landscape Mode

This Flutter project demonstrates how to build a fully dynamic video player using the VideoPlayer package integrated with GetX for state management. The video player includes essential features like play/pause controls, fullscreen mode with landscape orientation, and a smooth progress indicator.

## Features
- Play and pause video functionality.
- Fullscreen mode with automatic landscape orientation.
- Responsive video player UI with progress scrubbing.
- Clean and modular code structure using GetX.
- Error handling and intuitive user experience.

## Project Structure
- **controllers/video_controller.dart**: Handles video player logic, including play/pause, fullscreen management, and orientation changes.
- **views/video_player_page.dart**: Displays the video player with controls and the fullscreen option.
- **views/fullscreen_video_page.dart**: Provides a dedicated fullscreen experience with landscape orientation.
- **routes.dart**: Manages app routes and navigation.
- **binding.dart**: Sets up dependencies using GetX bindings.
- **main.dart**: Entry point of the app, connecting everything together.

## Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5
  video_player: ^2.5.0
```

## Getting Started
1. Clone this repository.
2. Run `flutter pub get` to install the required dependencies.
3. Modify the video URL in `video_controller.dart` to use your preferred video source.
4. Run the app using `flutter run`.

## How It Works
This project leverages GetX for state management, making the video player fully reactive and stateless. The fullscreen feature is triggered by tapping a button, which switches the screen orientation to landscape mode. Tapping the screen in fullscreen mode will exit and return the video player to portrait orientation.

## License
This project is open-source and available under the MIT License.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

## Video Tutorial
Watch the full tutorial on YouTube: [https://youtu.be/3oxXSkWkrWU](https://youtu.be/3oxXSkWkrWU)

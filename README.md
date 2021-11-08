# 🎨 StatusBar Manager
> Managing the colors of your StatusBar and NavigationBar is easier and more convenient using the StatusBarManager in your Flutter project.

## Install

Install the package as a dependency on __pubspec.yaml__ which is at the root of your project
```yaml
  dependencies:
    statusbarmanager: ^0.0.1
    // Awesome packages
```

Import the package into your main Dart file
```dart
import 'package:statusbarmanager/statusbarmanager.dart';
```

## Usage

You can instantiate the StatusBarManager right in your __main__ function
```dart
void main() {
  runApp(StatusBarManager(
    translucent: false,
    child: AwesomeWidget(),
  ));
}
```

Or manually instantiate in a class by extending __StatelessWidget__
```dart
void main() {
  runApp(AwesomeWidget());
}

class AwesomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatusBarManager(
      translucent: false,
      child: MaterialApp(
          home: Scaffold(),
        ),
    );
  }
}
```

The StatusBarManager class receives the following attributes:

| Propertie                     | Type       | Required    | Description              |
--------------------------------|------------|-------------|--------------------------|
| __child__                     | Widget     | Yes         | Receives a root widget that will be responsible for rendering the content on the screen          |
| __translucent__               | Bool       | Yes         | When false, the system status bar pushes the content of your app down (similar to position: relative). When true, the status bar floats above the content in your app (similar to position: absolute)       |
| __statusBarColor__            | Color      | No          | Set a color for your StatusBar      |
| __statusBarBrightness__       | Brightness | No          | Defines the shine your Status Bar should have |
| __statusBarIconBrightness__   | Brightness | No          | Sets brightness for StatusBar icons   |
| __navigationBarColor__        | Color      | No          | Sets the color for the NavigationBar  |
| __navigationBarBrightness__   | Brightness | No          | Set the brightness for the NavigationBar    |
| __navigationBarDividerColor__ | Color      | No          | Sets the color of the split between your UI content and the NavigationBar     |

See an [example](./example) of a real app using this package.

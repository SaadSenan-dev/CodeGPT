# Code GPT

A Flutter mobile application that replicates the look and feel of a modern AI chat assistant. Built as a complete UI clone of the ChatGPT interface, Code GPT delivers a polished conversational experience with keyword-based response matching, multi-screen navigation, and a component architecture designed for real-world extension.

The project targets Flutter developers who want a reference implementation of a full chat UI — from the animated typing indicator and auto-scrolling message list to the settings panel and a categorized explore screen.

---

## Features

### Chat Interface
- Real-time message rendering with distinct user and assistant bubble styles
- Animated three-dot typing indicator using staggered `AnimationController` with per-dot delays
- Auto-scroll to the latest message on every send and response
- Multi-line input that expands up to five lines before scrolling
- Dynamic send/voice icon toggle via `AnimatedSwitcher` — the send button appears only when the field has content
- Attachment bottom sheet with Photo and File options

### Keyword-Based Response Engine
- Local Q&A dataset covering Flutter, Dart, widgets, state management, navigation, Firebase, clean architecture, testing, Git, performance, and more
- Bilingual support — the dataset includes both Arabic and English keywords
- Graceful fallback response with topic suggestions when no keyword matches
- 2-second simulated response delay for realistic UX

### Explore Screen
- Twelve topic categories rendered in a two-column grid
- Per-category color theming and icon system
- Live search filter that matches against both title and subtitle

### Library Screen
- List of saved conversations with category badge, date label, and preview text
- Category-colored icon chips for quick visual scanning
- Swipe-to-delete or contextual menu interaction per conversation card

### Settings Screen
- Account section with profile display, plan badge (Free), Edit Profile, and Upgrade to Pro
- Appearance section with Dark Mode toggle, Language picker (English, Arabic, Français, Español), and Font Size
- AI Model section with model selector (Standard, Pro, Mini), Save Chat History toggle, and Clear All Chats with confirmation dialog
- Notifications section with Push Notifications and Sound Effects toggles
- About section with App Version, Privacy Policy, Terms of Service, and Rate the App
- Logout with confirmation dialog

### Navigation & Layout
- Named route navigation (`/`, `/explore`, `/library`, `/settings`)
- Drawer-based sidebar with Recent Chats list and primary navigation items
- Custom AppBar with hamburger menu and action buttons
- Empty state screen on the home view before any message is sent

---

## Tech Stack

| Category | Technology |
|---|---|
| Framework | Flutter |
| Language | Dart |
| Navigation | Named routes via `MaterialApp.routes` |
| State Management | `StatefulWidget` + `setState` |
| Animation | `AnimationController`, `FadeTransition`, `AnimatedSwitcher` |
| Local Data | In-memory Dart lists and keyword-matching functions |
| UI Components | Material 3 design primitives |
| Styling | Inline `BoxDecoration`, `TextStyle`, custom color palette |

---

## Architecture Overview

The project follows a screen-centric architecture with a clear separation between data, screens, and reusable widgets.

**Data layer** — All application data lives in `lib/data/`. Chat messages are modeled with a `ChatMessage` class (text, isUser). The Q&A knowledge base is a flat list of `QAEntry` objects, each carrying a list of keyword strings and an answer string. The `getAnswer()` function iterates the list, lowercases both the user input and each keyword, and returns the first match — or a default fallback. Sidebar navigation items are also data-driven via a `SideBarCategory` list.

**Screen layer** — Each route maps to a dedicated screen class in `lib/screens/`. Screens own their local state (message list, scroll controller, toggle values, selected options) and delegate display logic to widget components.

**Widget layer** — Reusable components live in `lib/widgets/`. `ChatBubble` handles message rendering, `InputBox` manages the text field, send logic, and the attachment sheet, `CustomAppBar` renders the header with drawer trigger, and `SideBar` renders the drawer content.

**Navigation** — Routes are registered on the root `MaterialApp` and navigated with `Navigator.pushNamed` and `Navigator.pop`. The drawer closes on item tap.

---

## Project Structure

```
lib/
├── main.dart                          # Entry point — calls runApp
├── app.dart                           # MaterialApp, route table
│
├── data/
│   ├── chat/
│   │   └── chat_data.dart             # ChatMessage, QAEntry, qaData list, getAnswer()
│   └── sidebar/
│       └── side_bar_data.dart         # SideBarCategory model, menuItems list
│
├── screens/
│   ├── home/
│   │   └── home_screen.dart           # Chat screen — message list, typing indicator, state
│   ├── explore/
│   │   └── explore_screen.dart        # Category grid with live search
│   ├── library/
│   │   └── library_screen.dart        # Saved conversations list
│   ├── settings/
│   │   └── settings_screen.dart       # Full settings panel
│   └── splash/
│       └── splash_screen.dart         # Splash screen
│
└── widgets/
    ├── appbar/
    │   └── app_bar.dart               # Custom top bar with drawer button
    ├── bubble/
    │   └── bubble.dart                # ChatBubble — renders user and assistant messages
    ├── inputbox/
    │   ├── input_box.dart             # Text field, send button, attachment trigger
    │   └── bottomarea/
    │       └── bottom_area.dart       # Modal sheet for Photo and File attachment options
    └── sidebar/
        └── side_bar.dart              # Drawer with logo, recent chats, nav items
```

---

## Installation

### Prerequisites

- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0`
- Android Studio or Xcode for device/emulator
- `flutter doctor` showing no critical errors

### Steps

```bash
# 1. Clone the repository
git clone https://github.com/your-username/code-gpt.git
cd code-gpt

# 2. Install dependencies
flutter pub get

# 3. Add the app logo asset
#    Place your logo image at:
images/logo.jpg

# 4. Run on a connected device or emulator
flutter run
```

> The package name in `main.dart` and imports is `ex_6`. If you rename the project, update the package name in `pubspec.yaml` and all import paths accordingly.

---

## Assets

The app references one image asset:

```yaml
# pubspec.yaml (add this under flutter:)
flutter:
  assets:
    - images/logo.jpg
```

Place your `logo.jpg` in an `images/` folder at the project root. It is used in the home screen welcome state and the sidebar header.

---

## Development

```bash
# Run in debug mode with hot reload
flutter run

# Run on a specific device
flutter run -d <device-id>

# List connected devices
flutter devices

# Analyze code
flutter analyze

# Run tests
flutter test
```

Hot reload is available in debug mode. Press `r` in the terminal to apply UI changes instantly, or `R` for a full hot restart.

---

## Build

```bash
# Android APK (release)
flutter build apk --release

# Android App Bundle (for Play Store)
flutter build appbundle --release

# iOS (requires macOS + Xcode)
flutter build ios --release
```

Output APK path: `build/app/outputs/flutter-apk/app-release.apk`

---

## Extending the Response Engine

The Q&A engine in `lib/data/chat/chat_data.dart` is intentionally simple — add a new `QAEntry` to the `qaData` list to extend coverage:

```dart
QAEntry(
  keywords: ["riverpod", "provider 2", "state management"],
  answer: "Riverpod is the recommended state management solution for Flutter...",
),
```

The matching function scans keywords in list order. More specific entries should appear before broader ones to avoid early keyword captures.

To replace the local engine with a real API (e.g., OpenAI), modify `_handleSendMessage` in `HomeScreen` — swap the `Future.delayed` block with an HTTP call and update the state with the API response.

---

## State Management

All state is managed locally with `StatefulWidget` and `setState`. Each screen owns the state it needs:

- `HomeScreen` — `_messages` list, `_isTyping` bool, `ScrollController`
- `ExploreScreen` — `_filtered` list driven by `TextEditingController`
- `LibraryScreen` — conversation list with delete operations
- `SettingsScreen` — toggle booleans (`_notificationsEnabled`, `_soundEnabled`, `_darkMode`), selected strings (`_selectedLanguage`, `_selectedModel`)

This approach keeps the codebase straightforward. For production scale, these state slices are natural candidates for extraction into a dedicated state management solution such as Riverpod or Bloc.

---

## Future Improvements

The current implementation provides a solid UI foundation. Realistic next steps based on the existing architecture:

- **Real AI backend** — Wire `_handleSendMessage` to an HTTP client calling the OpenAI or any REST API, replacing the local keyword matcher
- **Persistent chat history** — Replace the in-memory message list with a local database (e.g., `sqflite` or `Hive`) to survive app restarts
- **Authentication** — The Settings screen already has profile and logout UI; connecting this to Firebase Auth would complete the flow
- **Dark mode** — The toggle exists in Settings; applying a `ThemeData` switch in `MaterialApp` would activate it
- **Real attachment handling** — `BottomArea` has Photo and File slots ready for `image_picker` and `file_picker` integration
- **Voice input** — The microphone icon in the input box is the natural entry point for `speech_to_text`
- **Push notifications** — The toggle in Settings is in place; Firebase Cloud Messaging would provide the backend
- **Explore categories** — Cards are tappable but currently no-op; routing them to filtered chat sessions would complete the feature

---

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Keep changes focused — one feature or fix per pull request
4. Follow the existing widget-per-file convention under `lib/widgets/`
5. Run `flutter analyze` before submitting — keep the analyzer clean
6. Open a pull request with a clear description of what changed and why

---

## License

This project is open source. Add a `LICENSE` file to the repository root to specify terms. MIT is a common choice for Flutter UI projects.

---

Built by [Saad Sinan](https://github.com/your-username)

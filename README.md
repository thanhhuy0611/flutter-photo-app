# Photo App

### Requirement
- [x] Complete UI as design.
- [x] Use bloc to manage State
- [x] Implement internationalization (en, vi)

- [ ] Apply MVVM architecture.
- [x] Clear and re-useable code structure
- [x] Responsive on mobile, tablet, Web
- [x] Works with DarkMode
- [x] Pedantic Integration | analyzer | linter to code beautify
- [x] Init project using github, broken down into clear commits
### Local Setup
We use the following tools with specified version.

|Product|Version|
|--- | ---|
|Dart|v2.13.1|
|Flutter|v2.2.1|
|VSCode|v1.60.1|

### Requirements

**For the first time developer**  
You need to install FVM before move to the next step:

```bash
% dart pub global activate fvm
% cd photo_app
% fvm flutter pub get
```

## Code structures

```tree
assets
├── fonts // Font file
└── images // Asset images
lib
├── common // Global variable
├── l10n // localization config
├── helper // Helper utility classes
├── model // Modals of data
├── repository // Repositories for API communication
├── route // Route settings
├── theme // Theme file
├── screens // View directories 
└── widget // Widgets used across the pages
```

# Flutter's initial learning on MacOS and AndroidSDK.
and
## Flutter's initial learning on MacOS and iOS(XCode).

### For the time being, the development environment (repository) will be managed separately on Windows and MacOS.
### This is for MacOS's one(but for both Android and iOS).

#### Development policy
Wired (USB) connection tests of real Android and iOS devices are also performed, but the test development environment mainly checks operation on emulators.

---

### Learning Record


2/1<br>
My first Flutter App on MacOS both Android and iOS.<br>
[Flutter(by Google) official page "White your first Flutter app, part 1"](https://flutter.dev/docs/get-started/codelab)

Using an external open-source package named 'english_words', which contains a few thousand of the most used English words, and it's provides some useful utility functions.

~2/4 Step1~4 (Flutter official page by Google "Write your first Flutter app, part 1")[https://flutter.dev/docs/get-started/codelab] 

### What I learned in this codelab:
- Created a Flutter app from the ground up.
- Written Dart code.
- Leveraged an external, third-party library.
- Used hot reload for a faster development cycle.
- Implemented a stateful widget.
- Created a lazily loaded, infinite scrolling list.

Next steps: https://flutter.dev/docs/get-started/learn-more
- Implement interactivity by adding a clickable heart icon to save favorite pairings.
- Implement navigation to a new route by adding a new screen containing the saved favorites.
- Modify the theme color, making an all-white app.

---

### Create a new Flutter project from the command line(terminal).

Command:<br>
`flutter create -i swift -a kotlin --androidx --org com.itachi-p --description 'A new Flutter application!' my_app`

<p>options:</p>
<ul>
  <li>-i: for iOS directory, 'swift' or 'objc'(objective-c)<br>
      Selected 'swift' make 'AppDelegate.swift' file.</li>
  <li>-a: for Android directory, 'kotlin' or 'java'<br>
      Selected 'kotlin' make 'MainActivity.kt' file.</li>
  <li>--androidx:<br>
      Use AndroidX support libraries.<br>
      Almost Flutter's libraries (Plugin package) corresponds to AndroidX.</li>
  <li>--org:<br>
               In the case of Android, it's used as packages or applicationId.
               In the case of iOS, it's used as Bundle Identifier.
  </li>
  <li>--description:<br>
               It's writing to description in 'pubspec.yaml' or 'README.md'.
  </li>
  <li>At last, write project name. (change 'my_app' to new project name)</li>
</ul>

---
## Dart language
- Dart's syntax is very similar to Java and JavaScript.

[The grammer of Dart language(by Google)](https://dart.dev/guides/language/language-tour)

[DartPad](https://dartpad.dartlang.org/)

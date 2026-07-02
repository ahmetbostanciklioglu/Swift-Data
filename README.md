<div align="center">

# 💾 Swift Data for iOS

**A minimal SwiftUI + SwiftData example for persisting a simple list on-device**

![Platform](https://img.shields.io/badge/Platform-iOS%2018-black?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift)
![SwiftData](https://img.shields.io/badge/SwiftData-6E48AA?style=flat-square&logo=swift)
![Xcode](https://img.shields.io/badge/Xcode-16-4776E6?style=flat-square&logo=xcode)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/Swift-Data?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/Swift-Data?style=flat-square&color=4776E6)

</div>

## 📖 Overview

Swift Data for iOS is a concise, runnable learning example that shows how to use Apple's **SwiftData** framework together with **SwiftUI**. It demonstrates the core persistence loop: defining a `@Model` class, wiring up a `ModelContainer`, querying stored records with `@Query`, and inserting or deleting items through the `modelContext`. The app itself is a single screen where you type text, press return to save it, and swipe to delete — all persisted on-device across launches.

## ✨ What it covers

- Declaring a persistent model with the `@Model` macro (`SwiftDataModel`).
- Bootstrapping a `ModelContainer` at the app entry point and injecting it with `.modelContainer(...)`.
- Reading persisted records reactively via the `@Query` property wrapper.
- Inserting new records into the store using `@Environment(\.modelContext)` and `context.insert(...)`.
- Deleting records with `context.delete(...)` wired to SwiftUI's `.onDelete` swipe action.
- Using `#Preview` with an in-memory model container for fast SwiftUI previews.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/Swift-Data.git
cd Swift-Data
open "Swift Data for iOS.xcodeproj"
```

Then select an iOS 18 simulator (or a connected device) and press **⌘R** to build and run.

## 📋 Requirements

- iOS 18.0 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

---

> ⭐ If this helped you, consider giving the repo a star!

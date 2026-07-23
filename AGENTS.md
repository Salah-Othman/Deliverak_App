# Deliverak - Agent Instructions

## Project Structure

Three **independent** Flutter projects (NOT a monorepo). No shared packages, no Melos, no workspace config.

```
customer_app/    # Customer mobile app
driver_app/      # Driver mobile app  
admin_app/       # Merchant/Admin web app (Flutter Web)
```

**Critical:** Models, services, and utilities are **duplicated** across all three apps. Any change to shared code (e.g., `order.dart`) must be replicated in all three apps.

## Build Commands

Each app must be built independently:

```bash
cd customer_app  # or driver_app, admin_app
flutter pub get
dart run build_runner build --delete-conflicting-outputs  # for Freezed models
flutter analyze
flutter test
flutter run
```

**Known issue:** `intl` version is pinned to `0.20.2` by `flutter_localizations`. Use `intl: any` in pubspec.yaml (already configured).

## Tech Stack

- **Flutter** 3.x, **Dart** ^3.11.5
- **State:** Cubit (flutter_bloc + equatable) — BaseCubit<T> with CubitState hierarchy
- **Navigation:** GoRouter (declared dependency, not wired yet)
- **Firebase:** Auth, Firestore, Storage, Messaging (FirebaseConfig wrapper for graceful init)
- **Models:** Freezed + json_serializable (generated `.freezed.dart` and `.g.dart` files committed)
- **Cache:** Hive + flutter_secure_storage
- **Error Handling:** Failure classes (Server, Network, Cache, Auth, Location, Storage, Validation, Permission) + ErrorHandler

## Firebase Setup Required

Run `flutterfire configure` in each app. Until then, `FirebaseConfig.initialize()` will catch errors gracefully and print instructions.

## Architecture

```
lib/
  main.dart              # Entry point (MaterialBuilder + FirebaseConfig.init + ar_EG locale + localizations)
  core/
    config/              # FirebaseConfig - graceful Firebase initialization
    constants/           # App-wide constants (AppConstants, FirebaseConstants)
    error/               # Failure classes, ErrorHandler, CubitState hierarchy, BaseCubit<T>
    exceptions/          # Custom exceptions with Arabic messages (AppException, AuthException, OrderException, PaymentException)
    theme/               # Material 3 theme (primary: #E23744), AppColors
    router/              # EMPTY - GoRouter not configured
    utils/               # Validators (with OTP digit regex), Formatters (timeAgo, formatDate, currency)
  data/
    models/              # Freezed models (User, Order, Product, Merchant, CartItem, Location, Rating)
    services/            # Singleton Firebase service wrappers (StorageService, NotificationService, FirestoreService, FirebaseAuthService)
    repositories/        # EMPTY - not implemented
  logic/
    cubits/              # EMPTY - Cubits not implemented yet
  features/              # EMPTY directories - no screens built yet
  l10n/                  # EMPTY - no localization files
```

## Key Infrastructure

### Error Handling (`core/error/`)
- `Failure` — Equatable base class with Arabic messages
- `ServerFailure`, `NetworkFailure`, `CacheFailure`, `AuthFailure`, `LocationFailure`, `StorageFailure`, `ValidationFailure`, `PermissionFailure`
- `ErrorHandler` — Maps exceptions to Failures, Firebase auth error codes to Arabic strings
- `CubitState` — CubitInitial, CubitLoading, CubitSuccess<T>, CubitError, CubitEmpty
- `BaseCubit<T>` — Safe emit helpers, loading/success/error state management

### Services (Singleton Pattern)
All Firebase services use `static final _instance` + factory constructor + `._internal()`.
Call via `FirestoreService()`, `FirebaseAuthService()`, `StorageService()`, `NotificationService()`.

## Freezed Models

7 models with identical definitions across all apps:
- `User` (UserRole enum: customer/driver/admin/merchant)
- `Order` (OrderStatus, PaymentMethod enums with Arabic names)
- `Product`, `Merchant`, `CartItem`, `AppLocation`, `Rating`

After modifying any model, regenerate: `dart run build_runner build --delete-conflicting-outputs`

## Conventions

- **Arabic-first:** All UI text, error messages, and status labels in Arabic
- **Locale:** `ar_EG` (Egyptian Arabic)
- **Currency:** EGP (جنية), formatted via `Formatters.currency()`
- **Exceptions:** `AppException` base class with factory constructors for specific errors
- **Services:** Singleton pattern, plain Dart classes wrapping Firebase SDK
- **State Management:** Extend `BaseCubit<T>` for feature cubits, emit states via `emitLoading()`, `emitSuccess()`, `emitError()`

## Current Status (Early Stage)

- ✅ Project structure scaffolded
- ✅ Freezed models defined and generated
- ✅ Firebase service wrappers (singletons) implemented
- ✅ Theme, constants, exceptions, utils implemented
- ✅ Firebase config check (graceful failure)
- ✅ Error handling infrastructure (Failures + ErrorHandler + CubitState + BaseCubit)
- ✅ OTP digit-only validation
- ❌ No UI screens (all feature directories empty)
- ❌ No navigation (router directory empty)
- ❌ No Cubits implemented (logic/cubits/ empty)
- ❌ No Firebase config (need `flutterfire configure`)
- ❌ No tests (only default counter test)
- ❌ No CI/CD

## Plan Documents

- `Deliverak_App_Plan.md` - Original 24-week plan
- `Deliverak_App_Plan_v2.md` - Updated 28-week plan with detailed phases

## Gotchas

1. **Generated files are committed:** `.freezed.dart` and `.g.dart` files are in the repo. Don't edit them directly.
2. **No `build.yaml`:** Freezed uses default configuration.
3. **`generate: true` in pubspec:** Localization infrastructure set up but no `.arb` files yet.
4. **Platform targets:** Android, iOS, Web, Linux, macOS, Windows all configured per app.
5. **Admin app uses email/password auth:** Not phone OTP like customer/driver apps.
6. **Firebase needs config:** Run `flutterfire configure` in each app before Firebase works. `FirebaseConfig.initialize()` catches errors gracefully.
7. **Services are singletons:** Always call `FirestoreService()` not `FirestoreService()` — factory returns same instance.

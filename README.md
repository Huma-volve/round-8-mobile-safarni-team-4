# 🧳 Safarni - Travel Booking App

A comprehensive Flutter-based travel booking application that allows users to book flights, hotels, car rentals, and tours all in one place.

## 📱 About

Safarni (سفرني) is a full-featured travel booking mobile application built with Flutter. The app provides a seamless experience for users to search, compare, and book various travel services including flights, hotels, car rentals, and tours.

## ✨ Features

### 🔐 Authentication
- User registration with OTP verification
- Login with email/password
- Social authentication (Google Sign-In, Facebook)
- Password reset functionality
- Secure token management

### 🏠 Home & Discovery
- Onboarding screens for new users
- Welcome screen
- Category-based browsing (Flights, Hotels, Cars, Tours)
- Search functionality
- Featured destinations and tours

### ✈️ Flight Booking
- Flight search with multiple trip types (One-way, Round-trip, Multi-city)
- Flight selection and comparison
- Seat selection
- Boarding pass generation
- Flight booking management

### 🏨 Hotel Booking
- Hotel search and filtering
- Hotel details with image galleries
- Room selection and availability
- Check-in/Check-out date selection
- Hotel reviews and ratings

### 🚗 Car Rental
- Car search by location and dates
- Brand filtering (BMW, Mercedes, Porsche, Renault, etc.)
- Car details with specifications
- Pick-up and drop-off location selection
- Car comparison feature

### 🗺️ Tours & Destinations
- Tour browsing by categories
- Destination details
- Tour search functionality
- Tour comparison

### 👤 User Profile
- Personal information management
- Booking history
- Favorite items
- Account settings
- Security settings

### 💳 Payment
- Multiple payment methods (Credit Card, PayPal, Apple Pay, Google Pay)
- Secure payment processing
- Payment success confirmation

### 🔍 Additional Features
- Advanced filtering options
- Compare functionality for flights, hotels, and tours
- Favorites management
- Search with country/city selection
- Responsive design for all screen sizes

## 🏗️ Architecture

The app follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── core/                    # Core functionality
│   ├── api/                # API handling, error management
│   ├── di/                 # Dependency injection
│   ├── network/            # Network configuration
│   ├── routing/            # App routing
│   ├── theme/              # App theming
│   └── widgets/            # Reusable widgets
│
└── features/               # Feature modules
    ├── login/             # Authentication feature
    ├── home/              # Home screen
    ├── flight_appointment/ # Flight booking
    ├── hotel/             # Hotel booking
    ├── car_booking/       # Car rental
    ├── destination/       # Tours & destinations
    ├── profile/           # User profile
    ├── payment/           # Payment processing
    └── ...                # Other features
```

Each feature follows a layered architecture:
- **Data Layer**: API clients, data sources, repositories implementation, models
- **Domain Layer**: Entities, repository contracts, use cases
- **Presentation Layer**: UI (views, widgets), state management (Cubit/BLoC)

## 🛠️ Tech Stack

### State Management
- **flutter_bloc** - BLoC pattern for state management

### Networking
- **dio** - HTTP client
- **retrofit** - Type-safe REST client
- **pretty_dio_logger** - Request/response logging

### UI & Design
- **flutter_screenutil** - Responsive UI design
- **flutter_svg** - SVG image support
- **google_fonts** - Custom typography
- **lottie** - Animations
- **shimmer** - Loading placeholders
- **cached_network_image** - Image caching

### Local Storage
- **flutter_secure_storage** - Secure token storage
- **hive** - Local database
- **shared_preferences** - Simple key-value storage

### Authentication
- **firebase_core** & **firebase_authentication** - Firebase auth
- **google_sign_in** - Google authentication
- **jwt_decoder** - JWT token handling

### Location & Maps
- **flutter_map** - Map integration
- **geocoding** - Address geocoding
- **location** - Location services

### Other Dependencies
- **go_router** - Declarative routing
- **get_it** & **injectable** - Dependency injection
- **image_picker** - Image selection
- **table_calendar** - Calendar widget
- **flutter_rating_bar** - Rating widgets
- **pinput** - PIN input widget


## 📁 Project Structure

```
lib/
├── core/
│   ├── api/              # API error handling, result types
│   ├── colors/           # App color constants
│   ├── constants/        # App constants
│   ├── di/               # Dependency injection setup
│   ├── failure/          # Failure classes
│   ├── helpers/          # Helper utilities
│   ├── network/          # Network configuration
│   ├── routing/          # App routes and routing logic
│   ├── theme/            # App theme configuration
│   ├── use_case/         # Base use case classes
│   ├── utils/            # Utility functions
│   └── widgets/          # Reusable widgets
│
└── features/
    ├── boarding_pass/    # Boarding pass feature
    ├── bottom_nav_bar/   # Bottom navigation
    ├── car_booking/      # Car rental feature
    ├── compare/          # Comparison feature
    ├── destination/      # Tours & destinations
    ├── favorite/         # Favorites feature
    ├── filter/           # Filtering feature
    ├── flight_appointment/ # Flight booking
    ├── home/             # Home screen
    ├── hotel/            # Hotel booking
    ├── login/            # Authentication
    ├── onboarding/      # Onboarding screens
    ├── payment/          # Payment processing
    ├── profile/          # User profile
    ├── search/           # Search functionality
    ├── seat_selection/  # Seat selection
    ├── sign_up/         # Registration
    └── welcome/          # Welcome screen
```


## 🎨 Design System

The app uses a consistent design system:
- **Font**: Poppins (via Google Fonts)
- **Design Size**: 375x812 (iPhone X)
- **Theme**: Material Design 3
- **Responsive**: Uses `flutter_screenutil` for responsive design

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS


## 🔒 Security

- Secure token storage using `flutter_secure_storage`
- JWT token-based authentication
- Secure API communication
- Input validation and sanitization

## 📄 License

This project is private and proprietary.

## 👥 Team

Developed by **Safarni Team ** 


---


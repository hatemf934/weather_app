# Weather App 🔥

## Overview
The **Weather App** is a Flutter-based application that allows users to search for a city by name and retrieve real-time weather information for that location. The app leverages **Cubit** for state management, **API** for fetching weather data, and **ThemeData** for consistent theming across the app. It is a frontend-only application, meaning it does not require a backend server.

## Features
- **City Search**: Users can search for any city by name to get its current weather details.
- **Real-Time Weather Data**: Fetches weather information from a reliable weather API.
- **State Management**: Uses **Cubit** to manage the app's state efficiently.
- **Custom Theming**: Utilizes **ThemeData** to maintain a consistent and customizable UI theme.

## Technologies Used
- **State Management**: Cubit (from the `flutter_bloc` package)
- **API Integration**: [OpenWeatherMap API](https://openweathermap.org/api) or any other weather API.
- **Theming**: Flutter's **ThemeData** for UI consistency.

## How It Works
1. **User Input**: The user enters the name of a city in the search bar.
2. **API Call**: The app makes an API request to fetch the weather data for the specified city.
3. **State Management**: The **Cubit** manages the state of the app, handling loading, success, and error states.
4. **Display Data**: The weather data (temperature, humidity, wind speed, etc.) is displayed on the screen.
5. **Theming**: The app uses **ThemeData** to ensure a consistent look and feel across all screens.

## Installation
1. Ensure you have Flutter installed. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
2. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/weather-app.git

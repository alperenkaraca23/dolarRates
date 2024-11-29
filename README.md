```markdown
# Exchange Rates App

Exchange Rates App is a simple iOS application that retrieves live exchange rate data from an API and displays it on the main screen. This project serves as a practical exercise to learn how to fetch and handle data over the internet using APIs.

## Features

- **Live Exchange Rates**: Fetches and displays current exchange rates from a remote API.
- **JSON Parsing**: Processes JSON data into a dictionary for easy data handling.
- **Simple and Clean UI**: Presents exchange rate information in an organized layout.

## How It Works

1. **API Integration**:
   - Learned how to retrieve data over the internet using a RESTful API.

2. **JSON Parsing**:
   - Converted the fetched JSON data into a Swift dictionary for display.

3. **Main Screen Display**:
   - Showed the current exchange rates in a user-friendly format on the main screen.

## Requirements

- Xcode 14+ 
- iOS 15+ 
- Swift 5.7+

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/exchange-rates-app.git
   cd exchange-rates-app
   ```

2. Open the project in Xcode:
   ```bash
   open ExchangeRatesApp.xcodeproj
   ```

3. Run the project on a simulator or a physical device.

4. Replace the API endpoint (if necessary):
   - Locate the API URL in the project code (e.g., `ViewController.swift`).
   - Replace it with your desired exchange rate API endpoint if needed.

## Screenshots

<img width="334" alt="Ekran Resmi 2024-11-29 14 57 33" src="https://github.com/user-attachments/assets/b1e3a481-6a2e-4301-a3af-887ee991a637">

## Technologies Used

- **Swift**: Programming language for development.
- **URLSession**: For making network requests.
- **JSON Parsing**: To process and extract data from the API response.
- **Storyboard**: For designing the user interface.

## Future Improvements

- Add support for selecting specific currency pairs.
- Implement a search bar for easier navigation through exchange rates.
- Add a refresh button to update rates manually.
- Introduce a feature to view historical data using charts.

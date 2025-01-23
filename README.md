# Stride CLI - Fitness Data Visualizer

Fitness Data Visualizer is a powerful CLI application designed to streamline the management and visualization of fitness data. It works seamlessly with Apple Health & Fitness data, automatically importing and processing data from iCloud Drive. This application provides a convenient way to access, filter, and display your fitness information.

## Key Features

- **Automated Data Imports**: Leverages the iOS app, _Health Auto Export_, to import data from Apple Health into iCloud Drive.
- **Flexible Data Processing**: Aggregates data from iCloud Drive into a local cache, reducing redundant calls and improving performance.
- **Customizable Data Output**: Supports multiple flags and arguments to tailor data visualization.
- **Extensive Format Support**: Handles CSV or JSON exports with configurable aggregation settings.
- **Cloud and API Support**: Compatible with various cloud storage providers and REST APIs.

## Usage

```bash
Usage of Health Fitness Data Printer:
  fitness [options]

Options:
  -c    Use compact display mode
  -desc
        Sort in descending order
  -distance-per-week
        Show total distance per week
  -distance-per-workout
        Show distance per workout
  -energy-per-week
        Show total energy burned per week
  -f string
        Filter type (name, distance, duration, energy)
  -i string
        Include only specific fields (comma-separated)
  -n int
        Maximum number of items to display (0 for all)
  -sort string
        Sort by field (name, date, duration, distance, energy)
  -time-format string
        Time format string (default "2006-01-02 15:04:05 -0700")
  -type string
        Data type to display (workouts or metrics) (default "workouts")
  -value string
        Filter value
  -workouts-per-month
        Show total workouts per month
  -x string
        Exclude specific fields (comma-separated)

Examples:
  fitness -n 10 -c                    # Show 10 items in compact mode
  fitness -f name -v "Pool Swim"      # Show only Pool Swim workouts
  fitness -sort duration -desc        # Sort by duration descending
  fitness -i "name,duration,distance" # Show only specific fields
```

## Examples

- Show 10 items in compact mode:

  ```bash
  fitness -n 10 -c
  ```

- Display only "Pool Swim" workouts:

  ```bash
  fitness -f name -v "Pool Swim"
  ```

- Sort by duration in descending order:

  ```bash
  fitness -sort duration -desc
  ```

- Display specific fields:
  ```bash
  fitness -i "name,duration,distance"
  ```

## Prerequisites

- iOS device with _Health Auto Export_ installed.
- iCloud Drive configured to store Apple Health data.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/jaysaavedra18/apple-fitness-health-app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd apple-fitness-health-app
   ```
3. Build the application:
   ```bash
   go build
   ```
4. Run the CLI:
   ```bash
   ./fitness
   ```

## How It Works

1. **Data Export**: Use _Health Auto Export_ to define data points, format (CSV/JSON), and frequency of export.
2. **Data Import**: The CLI imports data from iCloud Drive and caches it locally.
3. **Data Visualization**: Use the CLI flags to customize and display your fitness data.

## Contributions

Contributions are welcome! Feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

# String Calculator

This project implements a String Calculator following the TDD (Test-Driven Development) methodology. The calculator can add numbers provided in a string format, handle custom delimiters, and throw exceptions for negative numbers.

## Features

- **Add Method**: Takes a string of numbers separated by commas or new lines and returns their sum.
- **Custom Delimiters**: Supports custom delimiters specified at the beginning of the string.
- **Negative Numbers**: Throws an exception if negative numbers are provided, listing all negative numbers in the exception message.

## Getting Started

### Prerequisites

- Ruby (version 2.7.0)
- Rails (version 6.1.7)

### Installation

1. Clone the repository:
    ```bash
    https://github.com/nidhi-soni1104/calculator.git
    cd string_calculator
    ```

2. Install the required gems:
    ```bash
    bundle install
    ```

3. Set up the database (if applicable):
    ```bash
    rails db:create
    rails db:migrate
    ```

### Running Tests

To run the tests, use the following command:
```bash
rails test

# Robot Framework Project with Selenium

This project uses [Robot Framework](https://robotframework.org/) with the [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/) to automate browser-based testing.

## Project Structure

```
.
├── emp-ecms.robot
├── hr-ecms.robot
├── interactive_console_output.xml
├── log.html
├── output.xml
├── report.html
├── selenium-screenshot-1.png
├── selenium-screenshot-2.png
└── requirements.txt
```

## Prerequisites

- Python 3.7 or higher
- Google Chrome (or another browser)
- [ChromeDriver](https://sites.google.com/chromium.org/driver/) that matches the installed version of Chrome and is added to the system PATH

## Installation

1. Clone this repository or copy the project files to your local machine.

2. (Optional) Create and activate a Python virtual environment:

   ```bash
   python -m venv venv
   source venv/bin/activate   # On Windows: venv\Scripts\activate
   ```

3. Upgrade pip and install dependencies:

   ```bash
   pip install --upgrade pip
   pip install --upgrade -r requirements.txt
   ```

4. Run the test cases using the `robot` command:

   ```bash
   robot emp-ecms.robot
   ```

   To run all `.robot` files:

   ```bash
   robot *.robot
   ```

## Test Reports

After execution, the following output files will be generated:

- `log.html` – Detailed log of the test execution
- `report.html` – Summary report of the test run
- `output.xml` – Output in XML format, useful for further processing

## Screenshots

If a test fails, SeleniumLibrary will capture screenshots and save them as `.png` files in the project folder, such as:

- `selenium-screenshot-1.png`
- `selenium-screenshot-2.png`

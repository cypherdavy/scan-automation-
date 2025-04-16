# Automated Bug Scanning Script

This script automates the process of discovering subdomains, scanning for live hosts, and running security scans using **Subfinder**, **HTTPX**, and **Nuclei**. It is designed to be run from the terminal, and it accepts a URL as input.

## Prerequisites

- **Python 3.x** is required for the script.
- **Go** is required to run Subfinder, HTTPX, and Nuclei.

### Install the required tools:

1. **Subfinder**:
   ```bash
   go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
   ```

2. **HTTPX**:
   ```bash
   go install github.com/projectdiscovery/httpx/cmd/httpx@latest
   ```

3. **Nuclei**:
   ```bash
   go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
   ```

## Setup

1. Clone this repository:

   ```bash
   git clone https://github.com/cypherdavy/scan-automation.git
   cd scan-automation
   ```

2. Install Python dependencies:

   ```bash
   pip install -r requirements.txt
   ```

## Usage

### Run the Script:

1. **Make the script executable**:

   ```bash
   chmod +x automated_scan.py
   ```

2. **Run the script** with a URL of your choice:

   ```bash
   python automated_scan.py -u https://example.com
   ```

   The script will:
   - Discover subdomains for the given URL.
   - Check which subdomains are alive using **HTTPX**.
   - Run security scans on the live subdomains using **Nuclei**.

### Example Output:

After running the script, you will see the results printed in your terminal and saved in a file called `scan_results.txt`.

## Configuration

The script automatically handles the configuration for Subfinder, HTTPX, and Nuclei. However, if needed, you can modify the configurations for each tool. Custom configurations can be found in the `/config` directory.

## License

This project is licensed under the MIT License.


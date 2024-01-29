# SiteCheck

SiteCheck is a collection of scripts designed to monitor the availability and status of various websites. It uses simple HTTP requests to ascertain whether sites are up and operational and can be easily customized to include any number of websites.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Bash (for Linux/macOS users) or PowerShell (for Windows users)
- `curl` command-line tool installed on your system

### Installing

1. Clone the repository to your local machine using Git:

    ```bash
    git clone <repository-URL>
    ```

    Replace `<repository-URL>` with the URL of your GitHub repository.

2. Navigate to the `SiteCheck` directory:

    ```bash
    cd SiteCheck
    ```

3. Ensure the main script `check_sites.sh` is executable:

    ```bash
    chmod +x scripts/check_sites.sh
    ```

### Configuration

To configure SiteCheck for your specific needs:

1. Edit the `sites_list.txt` file to include the URLs of the websites you want to monitor. Add one URL per line.

    Example:

    ```
    https://example.com
    https://example.org
    ```

2. If necessary, adjust the `check_sites.sh` script to accommodate any specific requirements or additional functionality.

### Usage

To run the SiteCheck script and check the status of your websites:

```bash
./scripts/check_sites.sh

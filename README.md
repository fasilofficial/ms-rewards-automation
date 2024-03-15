# MS Rewards Automation

This repository contains scripts for automating Microsoft Rewards tasks.

## Overview

Microsoft Rewards is a program through which users can earn points by completing tasks such as searching the web with Bing. This repository provides scripts to automate these tasks.

## Files

- `search.sh`: Bash script for automating Bing searches on Linux/MacOS.
- `search.bat`: Batch script for automating Bing searches on Windows.

## Requirements

- **Bash Script (search.sh):**
  - Operating System: Linux/MacOS
  - Dependencies: None

- **Batch Script (search.bat):**
  - Operating System: Windows
  - Dependencies: None

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/fasilofficial/ms-rewards-automation.git
    ```
    or
    
    ```bash
    git clone git@github.com:fasilofficial/ms-rewards-automation.git
    ```

2. Navigate to the repository directory:

    ```bash
    cd ms-rewards-automation
    ```

3. Run the appropriate script for your operating system:

    - **Linux/MacOS:**
    
      ```bash
      ./search.sh
      ```

    - **Windows:**
    
      ```bash
      search.bat
      ```
## Automating Search Task with Cron Job

Microsoft Rewards currently has a cooldown period of 15 minutes, during which only four searches yield points. To completely automate this task of searching four times every 15 minutes, you can set up a cron job using the following commands (applicable for Linux and MacOS users):

1. Open the terminal.

2. Type the following command to open the cron job editor:

    ```bash
    sudo crontab -u root -e
    ```

3. This will open the cron job configuration file in your default text editor.

4. Add the following line at the end of the file, replacing `/path/to/search.sh` with the actual path to the `search.sh` script in your `ms-rewards-automation` directory:

    ```bash
    */15 * * * * /path/to/search.sh
    ```

5. Save and exit the editor.
6. To verify the installation of the cron job, users can execute the following command:

   ```bash
   sudo crontab -u root -l | tail -n 1
   ```

This cron job will execute the `search.sh` script every 15 minutes, automating the task of searching four times in the Microsoft Rewards program.

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

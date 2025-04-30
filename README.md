# DNS Changer by Agha Acid Gol

This script allows you to change your DNS settings easily on Windows-based systems. It provides options to set custom DNS, reset DNS to automatic (DHCP), or flush the DNS cache. 

## Features
- Change DNS settings to various providers like Google, Cloudflare, Electro, Shecan, RadarGame, or custom DNS of your choice.
- Reset DNS settings back to automatic (DHCP).
- Flush DNS cache to resolve potential issues related to DNS resolution.

## Options
1. **Change DNS**: Allows you to set DNS servers to a predefined provider or enter custom DNS servers.
2. **Reset DNS to Automatic (DHCP)**: Resets DNS settings to use the default automatic configuration.
3. **Flush DNS Cache**: Clears the local DNS cache, which can help solve certain internet-related issues.

## How to Use
1. **Clone the repository or download the script**:
   - Clone with `git`:
     ```bash
     git clone https://github.com/Flash-CSS/zendegi-chenger.git
     ```
   - Or download the `.zip` and extract it.

2. **Run the script**:
   - Open Command Prompt (`cmd`) with **Administrator privileges**.
   - Navigate to the directory where the script is located.
   - Run the script:
     ```batch
     zendegi_chenger.bat
     ```

3. **Follow the prompts**:
   - Select one of the available options (1, 2, or 3).
   - For changing DNS, select your desired provider or enter custom DNS addresses.
   - For flushing the DNS cache, just select option 3.

## Example

```bash
Choose an option (1, 2, or 3): 1
Enter Network Adapter (1 or 2): 1
Choose your DNS provider:
1. Google (8.8.8.8 and 8.8.4.4)
2. Cloudflare (1.1.1.1 and 1.0.0.1)
3. Electro (78.157.42.100 and 78.157.42.101)
4. Shecan (185.51.200.2 and 178.22.122.100)
5. RadarGame (10.202.10.10 and 10.202.10.11)
6. Custom DNS
Enter your choice (1-6): 1
Setting DNS to 8.8.8.8 and 8.8.4.4 for Ethernet...

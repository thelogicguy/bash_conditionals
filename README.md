# System Utilities Script

This Bash script provides a collection of utility functions for system monitoring and management. Below are the instructions for using each function along with example command-line invocations.

# Prerequisites

Bash shell
System utilities: df, systemctl, mkdir, chmod, date
Root privileges for service-health-check (uses sudo for restarting services)
Backup files must be stored in /backups/ for verify-backup

# Usage
Save the scripts in a bash_conditionals directory and make each script executable:
using chmod +x

Run each script with a command and its arguments:
example ./disk_alert.sh <command> [arguments...]

# Available scripts:

- disk_alert.sh
- service_check.sh
- backup_verify.sh
- dir_check.sh
- greet.sh

# Commands and Examples

## 1. disk_alert
Checks the free disk space on the root (/) filesystem and alerts if it falls below the specified threshold percentage.
Usage:
./system_utils.sh disk-space-alert <threshold_percentage>

Example:
./system_utils.sh disk-space-alert 20

Output (if free space is 30%): All good. Free space is 30%.Output (if free space is 10%): Warning: Free space on / is below 20%.

## 2. service_check
Checks if a specified service is active. If inactive, it attempts to restart it (requires sudo).
Usage:
./system_utils.sh service-health-check <service_name>

Example:
./system_utils.sh service-health-check apache2

Output (if active): Service is running.Output (if inactive): Service apache2 is inactive. Restarting... Service restarted.

## 3. backup_verify
Verifies the existence of a backup file in the /backups/ directory.
Usage:
./system_utils.sh verify-backup <backup_filename>

Example:
./system_utils.sh verify-backup database_2025-07-19.tar.gz

Output (if exists): Backup OK: /backups/database_2025-07-19.tar.gz exists.Output (if missing): Backup missing: /backups/database_2025-07-19.tar.gz not found.

## 4. dir_check
Checks if a directory exists. If it doesn't, creates it with permissions 0755.
Usage:
./system_utils.sh check-directory <dir_path>

Example:
./system_utils.sh check-directory /tmp/myfolder

Output (if exists): Directory already exists: /tmp/myfolderOutput (if created): Directory created: /tmp/myfolder

## 5. greet
Prints a greeting based on the current time of day.
Usage:
./system_utils.sh time-greeting

Example:
./system_utils.sh time-greeting

Output (e.g., at 10 AM): Good morningOutput (e.g., at 3 PM): Good afternoonOutput (e.g., at 8 PM): Good evening
Notes

⚠️ 
   - Ensure the script has executable permissions (chmod +x system_utils.sh).
   - The service-health-check command requires sudo privileges for restarting services.
   - The verify-backup command assumes backups are stored in /backups/.
   - Exit codes: 0 for success, 1 for usage errors, 2 for warning conditions.

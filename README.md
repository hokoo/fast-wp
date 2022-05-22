# Deploy & Run WordPress

Contains WordPress and such plugins as:
- Woocommerce
- Classic Editor
- WP SMTP
- Query Monitor
- Contact Form 7
- CPT UI
- WP Logger

## Requirements
Linux, Docker Compose

## Notice

Call all scripts from root project directory.

## Installation

`bash ./install/setup.sh`

If you wanna customize `.env` file, first run 

`bash ./install/setup-env.sh`

and customize environment variables.

Don't forget renew your hosts file
`127.0.0.1     devitron.loc`.

## Clear installation

To remove all configs and WP-files, run

`bash ./install/clear.sh`

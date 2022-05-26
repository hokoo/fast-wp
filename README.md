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

Call all commands from root project directory.

## Installation

`make setup.all`

If you wanna customize `.env` file, first run 

`make setup.env`

and customize environment variables.

Don't forget renew your hosts file
`127.0.0.1     devitron.loc`.

## Clear installation

To remove all configs and WP-files, run

`make clear.all`

## Running in development mode
Dependencies:

- Ruby 3.1
- PostgreSQL
- Node.js

Fill credentials in `.env` file as
```bash
WEBSITE_DEV_DATABASE_PASSWORD_USERNAME=your_postgres_username
WEBSITE_DEV_DATABASE_PASSWORD_PASSWORD=your_postgres_password
```
Install dependencies:
```bash
bundle install
npm install
```
Run the frontend dev duild:
```
foreman start -f Procfile.dev
```
Run the web server from IDE or from terminal with
```bash
rails s
```

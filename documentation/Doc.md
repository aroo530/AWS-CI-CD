# The Infrastructure is simple

    2 s3 bucket (for the website and the media)
    1 RDS instance (for the database)
    1 ElasticBeanstalk (for the API)

    • the user interacts with the frontend saved on S3 bucket
    • the S3 sends a request to the backend stored in EB env
    • the EB sends a request to the database
    • database sends back the image URL and caption
    • EB sends the URL to the S3 media bucket
    • Then EB sends the image and caption back to the S3 frontend to display them

## Pipeline process

    we have two stages:
    1. build:
        - initialize the environment 
            = nodeJS + browsers (for testing)
        - install dependencies for frontend and backend
        - build the frontend and backend
        - test the frontend
        - save the workspace state
    2. deploy:
        - initialize the environment 
            = aws cli + eb cli
        - import the workspace state
        - deploy the frontend to S3
        - deploy the backend to EB
    
    note: switching between build and deploy will delete the workspace and build files that's why  we need to save the state before switching

## Backend Dependencies

    "@types/bcryptjs": "2.4.2",
    "@types/jsonwebtoken": "^8.3.2",
    "aws-sdk": "^2.429.0",
    "bcryptjs": "2.4.3",
    "body-parser": "^1.18.3",
    "cors": "^2.8.5",
    "dotenv": "^8.2.0",
    "email-validator": "^2.0.4",
    "express": "^4.16.4",
    "jsonwebtoken": "^8.5.1",
    "pg": "^8.7.1",
    "reflect-metadata": "^0.1.13",
    "sequelize": "^5.21.4",
    "sequelize-typescript": "^0.6.9",
    "ts-node": "^10.8.1"
    "@types/bluebird": "^3.5.26",
    "@types/cors": "^2.8.6",
    "@types/express": "^4.16.1",
    "@types/node": "^11.11.6",
    "@types/sequelize": "^4.27.44",
    "@types/validator": "^10.9.0",
    "@typescript-eslint/eslint-plugin": "^2.19.2",
    "@typescript-eslint/parser": "^2.19.2",
    "chai": "^4.2.0",
    "chai-http": "^4.2.1",
    "eslint": "^6.8.0",
    "eslint-config-google": "^0.14.0",
    "mocha": "^6.1.4",
    "ts-node-dev": "^1.0.0-pre.32",
    "typescript": "^3.9.10",

Frontend Dependencies:

    "@angular/common": "^8.2.14",
    "@angular/core": "^8.2.14",
    "@angular/forms": "^8.2.14",
    "@angular/http": "^7.2.16",
    "@angular/platform-browser": "^8.2.14",
    "@angular/platform-browser-dynamic": "^8.2.14",
    "@angular/router": "^8.2.14",
    "@ionic-native/core": "^5.0.0",
    "@ionic-native/splash-screen": "^5.0.0",
    "@ionic-native/status-bar": "^5.0.0",
    "@ionic/angular": "^4.1.0",
    "core-js": "^2.5.4",
    "rxjs": "~6.5.4",
    "zone.js": "~0.9.1"
    "@angular-devkit/architect": "~0.12.3",
    "@angular-devkit/build-angular": "^0.803.24",
    "@angular-devkit/core": "~7.2.3",
    "@angular-devkit/schematics": "~7.2.3",
    "@angular/cli": "~8.3.25",
    "@angular/compiler": "~8.2.14",
    "@angular/compiler-cli": "~8.2.14",
    "@angular/language-service": "~8.2.14",
    "@ionic/angular-toolkit": "~1.4.0",
    "@types/jasmine": "~2.8.8",
    "@types/jasminewd2": "~2.0.3",
    "@types/node": "~10.12.0",
    "@typescript-eslint/eslint-plugin": "^2.20.0",
    "@typescript-eslint/parser": "^2.20.0",
    "codelyzer": "~4.5.0",
    "jasmine-core": "~2.99.1",
    "jasmine-spec-reporter": "~4.2.1",
    "karma": "~3.1.4",
    "karma-chrome-launcher": "~2.2.0",
    "karma-coverage-istanbul-reporter": "~2.0.1",
    "karma-jasmine": "~1.1.2",
    "karma-jasmine-html-reporter": "^0.2.2",
    "protractor": "~5.4.0",
    "ts-node": "~8.0.0",
    "tslint": "~5.12.0",
    "typescript": "^3.5.3"

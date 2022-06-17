# Pipeline process

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

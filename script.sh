echo "NODE --version"
echo $(node --version)
echo "NPM --version"
echo $(npm --version)
npm run frontend:install
echo "TODO: Install dependencies in the the backend API  "
npm run backend:install
echo "TODO: Build the frontend app"
npm run frontend:build
echo "TODO: Build the backend API"
npm run backend:build
echo "TODO: Test the frontend app"
npm run frontend:test
npm run backend:test

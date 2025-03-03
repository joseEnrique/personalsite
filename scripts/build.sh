#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting build process...${NC}"

# Install dependencies
echo -e "${GREEN}Installing dependencies...${NC}"
npm install

# Run type check
echo -e "${GREEN}Running type check...${NC}"
vue-tsc -b

# Build the application
echo -e "${GREEN}Building the application...${NC}"
npm run build

# Check if build was successful
if [ -d "dist" ]; then
    echo -e "${GREEN}Build completed successfully!${NC}"
    echo -e "${GREEN}The build output is in the 'dist' directory${NC}"
else
    echo -e "\033[0;31mBuild failed!${NC}"
    exit 1
fi
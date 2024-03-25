#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to display command options
function show_options() {
    case $1 in
        ls)
            echo -e "${YELLOW}ls command options:${NC}"
            echo -e "${GREEN}-l${NC} : Long listing format."
            echo -e "${GREEN}-a${NC} : Include directory entries whose names begin with a dot (.)."
            echo -e "${GREEN}-h${NC} : With -l, print sizes in human readable format (e.g., 1K 234M 2G)."
            ;;
        grep)
            echo -e "${YELLOW}grep command options:${NC}"
            echo -e "${GREEN}-i${NC} : Ignore case distinctions in patterns and input data."
            echo -e "${GREEN}-r${NC} : Recursively search subdirectories listed."
            echo -e "${GREEN}-v${NC} : Invert the sense of matching, to select non-matching lines."
            ;;
        find)
            echo -e "${YELLOW}find command options:${NC}"
            echo -e "${GREEN}-name${NC} : Search for files by name."
            echo -e "${GREEN}-type${NC} : Search for a particular type (e.g., d for directories, f for files)."
            echo -e "${GREEN}-size${NC} : Search for files of a specific size (e.g., +50M for files larger than 50MB)."
            ;;
        *)
            echo -e "${RED}Invalid option, please choose a valid command.${NC}"
            ;;
    esac
}

# Main menu function
function main_menu() {
    echo -e "${YELLOW}Select a command to view its options:${NC}"
    echo -e "${GREEN}1. ls${NC}"
    echo -e "${GREEN}2. grep${NC}"
    echo -e "${GREEN}3. find${NC}"
    echo -e "${GREEN}4. Exit${NC}"

    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            show_options ls
            ;;
        2)
            show_options grep
            ;;
        3)
            show_options find
            ;;
        4)
            echo -e "${RED}Exiting...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid option, please choose between 1-4.${NC}"
            ;;
    esac
}

# Loop the main menu
while true; do
    main_menu
    echo ""
    read -p "Press Enter to return to the main menu..."
done
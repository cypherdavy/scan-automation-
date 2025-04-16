#!/bin/bash

# Colors
GREEN="\e[32m"
YELLOW="\e[33m"
NC="\e[0m"


if [ -z "$1" ]; then
  echo -e "${RED}[✘] Please provide a domain (URL) to scan.${NC}"
  echo -e "${YELLOW}Usage: ./scan.sh <domain_name>${NC}"
  exit 1
fi

TARGET_DOMAIN=$1

DATE=$(date +%Y-%m-%d_%H-%M)
OUTPUT_DIR="scan_results_$TARGET_DOMAIN_$DATE"
mkdir -p "$OUTPUT_DIR"

echo -e "${YELLOW}[+] Subdomain Enumeration for $TARGET_DOMAIN...${NC}"
subfinder -d "$TARGET_DOMAIN" -silent -o "$OUTPUT_DIR/subdomains.txt"

echo -e "${YELLOW}[+] Checking Live Subdomains...${NC}"
httpx -l "$OUTPUT_DIR/subdomains.txt" -silent -status-code -title -o "$OUTPUT_DIR/live_subdomains.txt"

echo -e "${YELLOW}[+] Running Nuclei Scan for Medium & Critical Vulnerabilities...${NC}"
nuclei -l "$OUTPUT_DIR/live_subdomains.txt" \
  -t ~/nuclei-templates/ \
  -severity critical,medium \
  -o "$OUTPUT_DIR/nuclei_results.txt"

echo -e "${GREEN}[✓] Scan completed. Results saved in ${OUTPUT_DIR}${NC}"

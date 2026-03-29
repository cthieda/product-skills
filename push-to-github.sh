#!/bin/bash
# Push DXT Product Lifecycle plugin to GitHub
# Repository: https://github.com/cthieda/product-skills
#
# Run this script from inside the product-skills folder:
#   cd product-skills
#   chmod +x push-to-github.sh
#   ./push-to-github.sh

set -e

echo "Initializing git repository..."
git init
git branch -M main

echo "Adding all files..."
git add -A

echo "Creating initial commit..."
git commit -m "Initial commit: DXT Product Lifecycle plugin

DXT Center for Product Excellence — skills and commands for every action
in the DXT Product Lifecycle: Clear Opportunity, Clear Solution, and Clear Outcomes.

Includes 8 skills with playbook references:
- Engage Partners
- Define the Problem
- Define the Value
- Shape Solutions
- Sequence for Impact
- Plan for Delivery
- Develop Iteratively
- Measure Impact"

echo "Adding remote origin..."
git remote add origin https://github.com/cthieda/product-skills.git

echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "Done! View your repo at: https://github.com/cthieda/product-skills"

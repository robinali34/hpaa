#!/bin/bash

# HPAA Website GitHub Pages Setup Script
echo "🚀 HPAA Website GitHub Pages Setup"
echo "=================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Get GitHub username
echo ""
echo "Please enter your GitHub username:"
read github_username

if [ -z "$github_username" ]; then
    echo "❌ GitHub username is required."
    exit 1
fi

# Get repository name
echo ""
echo "Please enter your repository name (default: hpaa-website):"
read repo_name

if [ -z "$repo_name" ]; then
    repo_name="hpaa-website"
fi

# Update _config.yml with the correct repository URL
echo ""
echo "📝 Updating configuration..."
sed -i "s|https://github.com/hpaa-club/hpaa-website|https://github.com/$github_username/$repo_name|g" _config.yml

# Add remote repository
echo ""
echo "🔗 Adding GitHub remote repository..."
git remote add origin https://github.com/$github_username/$repo_name.git

# Push to GitHub
echo ""
echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Go to https://github.com/$github_username/$repo_name"
echo "2. Click 'Settings' tab"
echo "3. Scroll down to 'Pages' section"
echo "4. Under 'Source', select 'Deploy from a branch'"
echo "5. Choose 'gh-pages' branch"
echo "6. Click 'Save'"
echo ""
echo "Your site will be available at:"
echo "https://$github_username.github.io/$repo_name/"
echo ""
echo "For custom domain setup, see DEPLOYMENT.md" 
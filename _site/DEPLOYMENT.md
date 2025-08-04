# GitHub Pages Deployment Guide

This guide will help you deploy the HPAA website to GitHub Pages.

## Quick Setup

### 1. Create GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository
2. Name it `hpaa-website` (or your preferred name)
3. Make it public (required for free GitHub Pages)
4. Don't initialize with README (we already have one)

### 2. Push Your Code

```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit: HPAA website"

# Add remote repository (replace with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/hpaa-website.git

# Push to GitHub
git push -u origin main
```

### 3. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Source**, select **Deploy from a branch**
5. Choose **gh-pages** branch (will be created by GitHub Actions)
6. Click **Save**

### 4. Configure Custom Domain (Optional)

If you have a custom domain (e.g., `hpaa.club`):

1. In the **Pages** settings, enter your domain in the **Custom domain** field
2. Click **Save**
3. Add a `CNAME` file to your repository root:

```
hpaa.club
```

4. Configure DNS with your domain provider:
   - Add a CNAME record pointing to `YOUR_USERNAME.github.io`
   - Or add an A record pointing to GitHub Pages IP addresses

## Automatic Deployment

The repository includes a GitHub Actions workflow that automatically:
- Builds the Jekyll site when you push to main/master branch
- Deploys to GitHub Pages
- Updates the site automatically

## Manual Deployment (Alternative)

If you prefer manual deployment:

1. Build the site locally:
   ```bash
   bundle install
   bundle exec jekyll build
   ```

2. Push the `_site` folder to the `gh-pages` branch:
   ```bash
   git subtree push --prefix _site origin gh-pages
   ```

## Troubleshooting

### Common Issues

1. **Site not updating**: Check GitHub Actions tab for build errors
2. **404 errors**: Ensure `baseurl` is set correctly in `_config.yml`
3. **Styling issues**: Check that assets are being served correctly

### Build Errors

If you see build errors in GitHub Actions:

1. Check the Actions tab in your repository
2. Look for specific error messages
3. Common fixes:
   - Update Ruby version in workflow
   - Fix plugin compatibility issues
   - Check for syntax errors in YAML files

## Updating the Site

To update your site:

1. Make changes to your local files
2. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Update site content"
   git push
   ```
3. GitHub Actions will automatically rebuild and deploy

## Repository Structure

Your repository should look like this:

```
hpaa-website/
├── .github/workflows/
│   └── deploy.yml          # GitHub Actions workflow
├── _config.yml             # Jekyll configuration
├── _data/
│   └── members.yml         # Member data
├── _includes/
│   ├── header.html         # Site header
│   └── footer.html         # Site footer
├── _layouts/
│   ├── default.html        # Main layout
│   └── post.html           # Blog post layout
├── _posts/
│   └── 2024-01-15-welcome-to-hpaa.md
├── assets/
│   ├── css/main.css        # Styles
│   └── js/main.js          # JavaScript
├── index.html              # Homepage
├── blog.html               # Blog index
├── Gemfile                 # Dependencies
├── DEPLOYMENT.md           # This file
└── README.md               # Project documentation
```

## Support

If you encounter issues:
1. Check the GitHub Actions logs
2. Review Jekyll documentation
3. Check GitHub Pages documentation
4. Contact the HPAA team for assistance

---

**Your site will be available at:** `https://YOUR_USERNAME.github.io/hpaa-website/` 
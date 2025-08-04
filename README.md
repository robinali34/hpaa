# HPAA - Hot Pot Astronomical Association | 火锅天文协会

A modern, responsive website for the Hot Pot Astronomical Association, built with Jekyll and designed for GitHub Pages hosting.

## 🌟 Features

- **Modern Design**: Clean, responsive layout with astronomy and hot pot themes
- **Jekyll-Based**: Static site generation with blog support and SEO optimization
- **Chinese Language Support**: Proper typography and character rendering
- **Dynamic Content**: Member showcase with YAML data files
- **Blog System**: Markdown-based blog posts with categories and tags
- **SEO Optimized**: Meta tags, sitemap, and RSS feed
- **GitHub Pages Ready**: Automatic deployment with GitHub Actions

## 🚀 Quick Start

### Prerequisites
- Ruby 2.7+ (for Jekyll)
- Git

### Local Development
```bash
# Clone the repository
git clone https://github.com/robinali34/hpaa.git
cd hpaa

# Install dependencies
bundle install

# Start Jekyll development server
./jekyll-serve.sh
# or manually: bundle exec jekyll serve --livereload

# Visit http://localhost:4000
```

### Quick Preview (Static HTML)
```bash
# For basic HTML/CSS/JS preview without Jekyll
./preview.sh
# Visit http://localhost:8080/preview.html
```

## 📁 Project Structure

```
hpaa/
├── _config.yml          # Jekyll configuration
├── _layouts/            # Page layouts
│   ├── default.html     # Main layout
│   └── post.html        # Blog post layout
├── _includes/           # Reusable components
│   ├── header.html      # Navigation header
│   └── footer.html      # Site footer
├── _data/               # Data files
│   └── members.yml      # Member information
├── _posts/              # Blog posts
├── assets/              # Static assets
│   ├── css/main.css     # Main stylesheet
│   └── js/main.js       # JavaScript
├── index.html           # Homepage
├── blog.html            # Blog index
├── CNAME                # Custom domain
└── README.md            # This file
```

## 🌐 Deployment

### GitHub Pages (Recommended)
1. **Repository**: https://github.com/robinali34/hpaa
2. **Live Site**: https://hpaa.club (once DNS is configured)
3. **GitHub Pages**: https://robinali34.github.io/hpaa

### Setup GitHub Pages
1. Go to repository Settings → Pages
2. Source: Deploy from a branch
3. Branch: `main` → `/ (root)`
4. Save

### Custom Domain
- Domain: `hpaa.club`
- CNAME file already configured
- Update DNS records to point to `robinali34.github.io`

## 📝 Adding Content

### New Members
Edit `_data/members.yml`:
```yaml
- name: "Member Name"
  description: "Astronomy Enthusiast"
  icon: "fas fa-user-astronaut"
  website: "https://example.com"
```

### New Blog Posts
Create files in `_posts/` with format: `YYYY-MM-DD-title.md`
```markdown
---
layout: post
title: "Post Title"
date: 2024-01-15
author: "Author Name"
tags: [astronomy, hot-pot]
---

Post content here...
```

## 🎨 Customization

### Colors & Themes
- Primary: `#ff6b35` (Hot pot orange)
- Secondary: `#1a1a2e` (Night sky)
- Accent: `#16213e` (Deep space)

### Typography
- English: Inter font family
- Chinese: Noto Sans SC font family

## 🔧 Development Scripts

- `jekyll-serve.sh` - Start Jekyll development server
- `preview.sh` - Start static HTML preview server
- `setup-github.sh` - Initialize GitHub repository

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

---

**HPAA** - Looking up at the universe while enjoying hot pot below 🌌🍲 
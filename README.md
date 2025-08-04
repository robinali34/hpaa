# HPAA - Hot Pot Astronomical Association

A modern, responsive Jekyll website for the Hot Pot Astronomical Association (HPAA), a Chinese astronomy enthusiasts organization in the San Francisco Bay Area.

## 🌟 About HPAA

The name 'hot pot' originates from 2017 CalStar in Whisper Canyon, where we cooked Chinese hot pot under the stars. The universe was born in a hot dense soup, and we believe the sky with all kinds of galaxies/nebulae/stars is just like the hot pot with different food inside.

火锅天文协会(HPAA)，是旧金山湾区的一个华人天文爱好者组织。宇宙诞生于一团热汤之中，就好像我们的火锅。我们在加州黑暗的天空下，抬头看宇宙，低头吃火锅，享受天文，享受生活。

## ✨ Features

- **Jekyll Static Site Generator**: Easy content management and blog functionality
- **Modern Design**: Clean, responsive design with astronomy and hot pot themes
- **Interactive Elements**: Smooth animations, parallax effects, and hover interactions
- **Mobile-First**: Fully responsive design that works on all devices
- **Blog System**: Built-in blog with markdown support and automatic RSS feed
- **SEO Optimized**: Built-in SEO tags and sitemap generation
- **Contact Form**: Interactive contact form with Formspree integration
- **Member Showcase**: Dynamic member profiles from YAML data files
- **Accessibility**: Semantic HTML and keyboard navigation support
- **Chinese Language Support**: Full support for Chinese characters with Noto Sans SC font
- **GitHub Pages Ready**: Optimized for hosting on GitHub Pages

## 🚀 Quick Start

### Option 1: Jekyll Development Server (Recommended)

```bash
# Start Jekyll development server
./jekyll-serve.sh
```

Then open: **http://localhost:4000**

### Option 2: Manual Jekyll Setup

```bash
# Install dependencies
bundle install

# Start Jekyll server
bundle exec jekyll serve --port 4000
```

### Option 3: Simple HTTP Server (Fallback)

```bash
# Start simple server
./preview.sh
```

Then open: **http://localhost:8080**

## 🚀 Technologies Used

- **Jekyll 4.2+**: Static site generator
- **Liquid**: Templating language
- **HTML5**: Semantic markup structure
- **CSS3**: Modern styling with Flexbox and Grid
- **JavaScript (ES6+)**: Interactive functionality and animations
- **Font Awesome**: Icons for visual elements
- **Google Fonts**: Inter + Noto Sans SC (Chinese support)
- **Formspree**: Contact form handling
- **GitHub Pages**: Hosting platform

## 📁 Project Structure

```
hpaa/
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
│   └── 2024-01-15-welcome-to-hpaa.md  # Sample blog post
├── _site/                  # Generated site (Jekyll output)
├── assets/
│   ├── css/main.css        # Main stylesheet
│   └── js/main.js          # JavaScript functionality
├── index.html              # Homepage (Jekyll)
├── blog.html               # Blog index page
├── preview.html            # Static preview (fallback)
├── Gemfile                 # Ruby dependencies
├── jekyll-serve.sh         # Jekyll server script
├── preview.sh              # Simple server script
├── setup-github.sh         # GitHub setup script
├── DEPLOYMENT.md           # Deployment guide
└── README.md               # Project documentation
```

## 🛠️ Development

### Prerequisites
- Ruby 2.7+ (for Jekyll)
- Bundler
- A modern web browser

### Local Development

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd hpaa
   ```

2. **Start Jekyll development server**
   ```bash
   ./jekyll-serve.sh
   ```

3. **Access the website**
   - Navigate to `http://localhost:4000`
   - The site will automatically reload when you make changes

### Jekyll Features

✅ **Dynamic Content**: Members loaded from `_data/members.yml`
✅ **Blog System**: Posts in `_posts/` with automatic RSS feed
✅ **SEO Optimization**: Automatic meta tags and sitemap
✅ **Chinese Support**: Proper font rendering for Chinese characters
✅ **Hot Reload**: Automatic page refresh on changes
✅ **Responsive Design**: Works on all device sizes

## 🎨 Design Features

### Color Scheme
- **Primary**: Orange (#ff6b35) - Represents the hot pot theme
- **Secondary**: Dark blue gradient - Represents the night sky
- **Accent**: White and light gray - For text and highlights

### Typography
- **English**: Inter font family
- **Chinese**: Noto Sans SC font family
- **Weights**: 300, 400, 500, 600, 700
- **Languages**: English and Chinese (Simplified)

### Animations
- Twinkling stars background
- Smooth scroll navigation
- Hover effects on cards and buttons
- Parallax scrolling effects
- Loading animations

## 📱 Responsive Design

The website is fully responsive and optimized for:
- **Desktop**: 1200px+ (Full layout with side-by-side content)
- **Tablet**: 768px - 1199px (Adjusted grid layouts)
- **Mobile**: 320px - 767px (Single column layout with mobile menu)

## 🔧 Customization

### Adding New Members
To add new members, edit `_data/members.yml`:

```yaml
- name: "New Member Name"
  description: "Member Description"
  icon: "fas fa-user-astronaut"
  website: "https://example.com"
```

### Adding Blog Posts
Create new markdown files in `_posts/` with the format `YYYY-MM-DD-title.md`:

```markdown
---
layout: post
title: "Your Post Title"
date: 2024-01-15
author: "Author Name"
tags: [tag1, tag2]
excerpt: "Brief description of the post"
---

Your post content here...
```

### Changing Colors
The main color scheme can be modified in `assets/css/main.css`:
- Primary color: `#ff6b35`
- Secondary color: `#f7931e`
- Background gradient: Modify the `body` background property

### Updating Site Configuration
Edit `_config.yml` to change:
- Site title and description
- Social media links
- Navigation menu
- Contact information

## 🌐 Deployment

### GitHub Pages (Recommended)
1. Push your code to a GitHub repository
2. Go to repository Settings > Pages
3. Select source branch (usually `gh-pages`)
4. Your site will be available at `https://username.github.io/repository-name`

### Netlify
1. Connect your Git repository to Netlify
2. Set build command: `jekyll build`
3. Set publish directory: `_site`
4. Deploy automatically on every push

### Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel`
3. Follow the prompts

### Traditional Web Hosting
1. Build the site: `bundle exec jekyll build`
2. Upload the `_site` folder contents to your web server

### Custom Domain
To use a custom domain (e.g., `hpaa.club`):
1. Update `url` in `_config.yml`
2. Configure DNS settings with your domain provider
3. Add SSL certificate for HTTPS

## 📞 Contact Form

The contact form uses Formspree for handling submissions:

1. **Get a Formspree account** at [formspree.io](https://formspree.io)
2. **Create a new form** and get your form ID
3. **Add the form ID** to `_config.yml`:
   ```yaml
   formspree_id: "your-form-id-here"
   ```

## 🔍 SEO Optimization

The website includes:
- Automatic meta tags generation
- Open Graph and Twitter Card support
- XML sitemap generation
- RSS feed for blog posts
- Semantic HTML structure
- Fast loading times
- Mobile-friendly design

## 📦 Jekyll Plugins

This site uses the following Jekyll plugins:
- **jekyll-feed**: Generates RSS feed for blog posts
- **jekyll-seo-tag**: Adds SEO meta tags
- **jekyll-sitemap**: Generates XML sitemap

## 🇨🇳 Chinese Language Support

The website includes full Chinese language support:
- **Font**: Noto Sans SC for proper Chinese character rendering
- **Encoding**: UTF-8 for correct character display
- **Content**: Bilingual English and Chinese text
- **Meta tags**: Proper language attributes

## 🐛 Browser Support

- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## 📄 License

This project is created for HPAA. All rights reserved.

## 🤝 Contributing

For HPAA members who want to contribute:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally with `./jekyll-serve.sh`
5. Submit a pull request

## 📞 Support

For questions or support regarding this website, please contact the HPAA team.

---

**HPAA - Hot Pot Astronomical Association**  
*Looking up at the universe while enjoying hot pot below*  
火锅天文协会 - 抬头看宇宙，低头吃火锅 
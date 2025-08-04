#!/bin/bash

# Jekyll Development Server Script
echo "🌐 HPAA Jekyll Development Server"
echo "================================="

# Kill any existing servers
echo "🛑 Stopping existing servers..."
pkill -f "python3 -m http.server" 2>/dev/null
pkill -f "jekyll serve" 2>/dev/null

# Check if Jekyll is installed
if ! command -v bundle &> /dev/null; then
    echo "❌ Bundler is not installed. Please install Ruby and Bundler first."
    exit 1
fi

# Install dependencies if needed
echo "📦 Checking dependencies..."
bundle install

# Build the site
echo "🔨 Building Jekyll site..."
bundle exec jekyll build

# Start Jekyll server
echo "🚀 Starting Jekyll development server..."
echo ""
echo "✅ Jekyll is now running!"
echo "🌐 Open your browser and go to:"
echo "   http://localhost:4000"
echo ""
echo "📱 You can also access it from other devices on your network:"
echo "   http://$(hostname -I | awk '{print $1}'):4000"
echo ""
echo "🔄 The site will automatically reload when you make changes"
echo "🛑 To stop the server, press Ctrl+C"
echo ""
echo "📋 Jekyll Features:"
echo "   ✅ Dynamic content from _data/members.yml"
echo "   ✅ Blog posts from _posts/"
echo "   ✅ SEO optimization"
echo "   ✅ Chinese language support"
echo "   ✅ Responsive design"
echo "   ✅ Hot reload on changes"
echo ""

# Start Jekyll server
bundle exec jekyll serve --port 4000 --host 0.0.0.0 --livereload 
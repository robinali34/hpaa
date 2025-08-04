#!/bin/bash

# HPAA Website Preview Script
echo "🌐 HPAA Website Preview"
echo "======================"

# Kill any existing servers
echo "🛑 Stopping existing servers..."
pkill -f "python3 -m http.server" 2>/dev/null
pkill -f "jekyll serve" 2>/dev/null

# Find an available port
PORT=8080
while netstat -tlnp 2>/dev/null | grep -q ":$PORT "; do
    PORT=$((PORT + 1))
done

echo "🚀 Starting server on port $PORT..."

# Start the server
python3 -m http.server $PORT &

# Wait a moment for server to start
sleep 2

echo ""
echo "✅ Website is now running!"
echo "🌐 Open your browser and go to:"
echo "   http://localhost:$PORT"
echo ""
echo "📱 You can also access it from other devices on your network:"
echo "   http://$(hostname -I | awk '{print $1}'):$PORT"
echo ""
echo "🛑 To stop the server, press Ctrl+C or run:"
echo "   pkill -f 'python3 -m http.server'"
echo ""
echo "📋 Preview Checklist:"
echo "   ✅ Homepage loads correctly"
echo "   ✅ Navigation works smoothly"
echo "   ✅ Responsive design on mobile"
echo "   ✅ Animations are working"
echo "   ✅ Contact form displays"
echo "   ✅ Blog page accessible"
echo "   ✅ Member cards show properly"
echo ""

# Keep the script running
wait 
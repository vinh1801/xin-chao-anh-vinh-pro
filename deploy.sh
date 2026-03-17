#!/bin/bash
echo "🚀 Deploying Xin Chào Anh Vinh website..."

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not installed. Please install with: npm i -g vercel"
    echo "📦 Alternative: Deploy via GitHub + Vercel integration"
    exit 1
fi

# Deploy to Vercel
echo "📤 Deploying to Vercel..."
vercel --prod --yes

if [ $? -eq 0 ]; then
    echo "✅ Deployment successful!"
    echo "🌐 Your website is live at: https://xin-chao-anh-vinh-pro.vercel.app"
else
    echo "❌ Deployment failed"
    echo "💡 Try: vercel login && vercel --prod"
fi
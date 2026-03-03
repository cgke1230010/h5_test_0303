#!/bin/bash

# H5游戏一键云端部署脚本
# 支持：GitHub Pages, Vercel, Netlify

set -e

echo "🚀 H5游戏云端部署工具"
echo "========================================"
echo "选择部署平台："
echo "1. GitHub Pages (免费，需要GitHub账号)"
echo "2. Vercel (最简单，一键部署)"
echo "3. Netlify (拖拽上传)"
echo "4. 所有平台都部署"
echo "========================================"

read -p "请输入选项 (1-4): " choice

case $choice in
    1)
        deploy_github_pages
        ;;
    2)
        deploy_vercel
        ;;
    3)
        deploy_netlify
        ;;
    4)
        deploy_all
        ;;
    *)
        echo "无效选项"
        exit 1
        ;;
esac

deploy_github_pages() {
    echo "📦 部署到 GitHub Pages..."
    echo ""
    echo "📋 操作步骤:"
    echo "1. 创建GitHub仓库: https://github.com/new"
    echo "2. 仓库名: h5-click-game"
    echo "3. 不要初始化README"
    echo ""
    echo "🔧 本地操作:"
    echo "git init"
    echo "git add ."
    echo "git commit -m '部署H5游戏'"
    echo "git branch -M main"
    echo "git remote add origin https://github.com/你的用户名/h5-click-game.git"
    echo "git push -u origin main"
    echo ""
    echo "⚙️  仓库设置:"
    echo "1. 进入仓库 Settings → Pages"
    echo "2. Source: 选择 main 分支"
    echo "3. 点击 Save"
    echo "4. 等待部署完成 (约1分钟)"
    echo ""
    echo "🌐 访问地址:"
    echo "https://你的用户名.github.io/h5-click-game/"
    echo ""
    echo "✅ 完成！任何人都可以访问这个链接"
}

deploy_vercel() {
    echo "🚀 部署到 Vercel..."
    echo ""
    echo "📋 操作步骤:"
    echo "方法A: 网页拖拽 (最简单)"
    echo "1. 访问 https://vercel.com"
    echo "2. 注册/登录"
    echo "3. 点击 'Add New' → 'Project'"
    echo "4. 拖拽当前文件夹到上传区域"
    echo "5. 点击 'Deploy'"
    echo ""
    echo "方法B: 使用Vercel CLI"
    echo "1. 安装: npm i -g vercel"
    echo "2. 执行: vercel"
    echo "3. 按提示操作"
    echo "4. 执行: vercel --prod"
    echo ""
    echo "🌐 访问地址:"
    echo "https://h5-click-game.vercel.app"
    echo "(自动生成，可自定义)"
    echo ""
    echo "✅ 全球CDN，自动HTTPS"
}

deploy_netlify() {
    echo "🌐 部署到 Netlify..."
    echo ""
    echo "📋 操作步骤:"
    echo "方法A: 网页拖拽"
    echo "1. 访问 https://app.netlify.com/drop"
    echo "2. 拖拽当前文件夹到页面"
    echo "3. 等待部署完成"
    echo ""
    echo "方法B: 使用Netlify CLI"
    echo "1. 安装: npm i -g netlify-cli"
    echo "2. 执行: netlify deploy"
    echo "3. 选择: Create & configure a new site"
    echo "4. 执行: netlify deploy --prod"
    echo ""
    echo "🌐 访问地址:"
    echo "https://随机名称.netlify.app"
    echo "(可自定义)"
    echo ""
    echo "✅ 免费SSL，全球分发"
}

deploy_all() {
    echo "🎯 部署到所有平台..."
    echo ""
    echo "📋 建议流程:"
    echo "1. 先部署到 GitHub Pages (作为源码仓库)"
    echo "2. 然后部署到 Vercel (最简单)"
    echo "3. 最后部署到 Netlify (作为备份)"
    echo ""
    echo "🔗 你将获得:"
    echo "- GitHub: https://用户名.github.io/h5-click-game"
    echo "- Vercel: https://h5-click-game.vercel.app"
    echo "- Netlify: https://h5-click-game.netlify.app"
    echo ""
    echo "📊 优势:"
    echo "- 多个访问入口"
    echo "- 高可用性"
    echo "- 不同地区的访问速度"
}

echo ""
echo "🎮 游戏文件已准备就绪"
echo "📁 目录内容:"
ls -la
echo ""
echo "✨ 开始部署吧！"
echo "=== 诊断开始 ==="
echo "1. 检查本地文件..."
cd ~/homebrew-tap
pwd
ls -la
echo "--- Casks 目录内容 ---"
ls -la Casks/ 2>/dev/null || echo "Casks 目录不存在"
echo "--- Cask 文件内容 ---"
cat Casks/qshell.rb 2>/dev/null || echo "Cask 文件不存在"

echo "2. 检查 Homebrew Tap 状态..."
brew tap | grep Mredward123 || echo "Mredward123/tap 未找到"

echo "3. 尝试重新添加 Tap..."
brew untap Mredward123/tap 2>/dev/null || echo "无需移除"
brew tap Mredward123/tap ~/homebrew-tap

echo "4. 验证..."
brew tap | grep Mredward123
echo "=== 诊断结束 ==="

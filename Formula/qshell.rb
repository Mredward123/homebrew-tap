class Qshell < Formula
  desc "QShell - A command-line tool built with Go"
  homepage "https://github.com/tea4go/qshell"
  url "https://github.com/tea4go/qshell/releases/download/v5.4.0/QShell_macos_universal.zip"
  sha256 "9ee467f1063f491da44f67014c38fc45cca386098d21d7230ed6479b2373e891"
  license "Apache-2.0"
  
  depends_on :macos

  def install
    # 直接安装可执行文件
    bin.install "QShell_macos_universal/QShell.app/Contents/MacOS/QShell" => "qshell"
  end

  test do
    assert_match "version", shell_output("#{bin}/qshell --version", 1)
  end
end
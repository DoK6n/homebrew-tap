class Termweb < Formula
  desc "Search and browse the web from your terminal"
  homepage "https://github.com/DoK6n/termweb"
  url "https://github.com/DoK6n/termweb/releases/download/v0.1.0/termweb-0.1.0.tgz"
  sha256 "f934fc6411138c0bb76a54ca14624ba2ffb2ae5086b45c47a627c31982b7462a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termweb --version")
  end
end

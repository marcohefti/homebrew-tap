class Surfwright < Formula
  desc "Agent-first browser control surface for Chrome/Chromium"
  homepage "https://github.com/marcohefti/surfwright"
  url "https://registry.npmjs.org/@marcohefti/surfwright/-/surfwright-0.1.2.tgz"
  sha256 "b475029c721218b7b929fda9153cbff6ff67a5cced563ec72fed9c14505dde65"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "\"ok\":true", shell_output("#{bin}/surfwright --json contract")
  end
end

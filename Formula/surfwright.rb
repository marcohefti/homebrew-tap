class Surfwright < Formula
  desc "Agent-first browser control surface for Chrome/Chromium"
  homepage "https://github.com/marcohefti/surfwright"
  url "https://registry.npmjs.org/@marcohefti/surfwright/-/surfwright-0.1.3.tgz"
  sha256 "ed2c4c3ce4ad22117e05a6cac9cfe741db2cd7509baee8730ab74d758d71ddd4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "\"ok\":true", shell_output("#{bin}/surfwright contract")
  end
end

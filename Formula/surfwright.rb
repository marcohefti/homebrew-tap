class Surfwright < Formula
  desc "Agent-first browser control surface for Chrome/Chromium"
  homepage "https://github.com/marcohefti/surfwright"
  url "https://registry.npmjs.org/@marcohefti/surfwright/-/surfwright-0.1.1.tgz"
  sha256 "7238c220b559abfec12d47120c257905c5a5e52289f4b95047bfc71a821c9afc"
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

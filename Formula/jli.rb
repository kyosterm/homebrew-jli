class Jli < Formula
  desc "Command-line client for Jenkins and CloudBees"
  homepage "https://github.com/kyosterm/homebrew-jli"
  url "https://github.com/kyosterm/homebrew-jli/releases/download/v0.8.1/jli-v0.8.1-darwin-arm64.tar.gz"
  version "0.8.1"
  sha256 "2fa9b407f50fc2fec261ef4744f7513cf12cf294cbd1dd3cef0dd8fbe2ebf2d0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jli --version")
  end
end

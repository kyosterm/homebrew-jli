class Jli < Formula
  desc "CLI for Jenkins and CloudBees workflows"
  homepage "https://github.com/kyosterm/homebrew-jli"
  version "0.8.1"
  license :cannot_represent

  depends_on :macos

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kyosterm/homebrew-jli/releases/download/v0.8.1/jli-v0.8.1-darwin-arm64.tar.gz"
    sha256 "2fa9b407f50fc2fec261ef4744f7513cf12cf294cbd1dd3cef0dd8fbe2ebf2d0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kyosterm/homebrew-jli/releases/download/v0.8.1/jli-v0.8.1-darwin-amd64.tar.gz"
    sha256 "8b448e91c2b1393fef00e75a63b0a971afc2459b9b971761ca3bc3fe5071b6cc"
  end

  def install
    bin.install "jli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jli --version")
  end
end

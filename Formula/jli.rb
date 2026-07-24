class Jli < Formula
  desc "Command-line client for Jenkins and CloudBees"
  homepage "https://github.com/kyosterm/homebrew-jli"
  url "https://github.com/kyosterm/homebrew-jli/releases/download/v0.9.0/jli-v0.9.0-darwin-arm64.tar.gz"
  version "0.9.0"
  sha256 "48eb7ab7e4326082415d6b0ce6b90aa7fbcc3f42f06a280c62879e9ef8141f2a"
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

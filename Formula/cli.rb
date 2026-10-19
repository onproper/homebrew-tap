class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.13"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.13/proper-darwin-arm64"
    sha256 "7daf88ee9cf979e58d9c5e6570c640c848f65da23829b6849a2d8b8472e9e561"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.13/proper-darwin-amd64"
    sha256 "8abe437735c22a0f6419b42827d709880376cfc8be75a7d09ae566b8f1825629"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.13/proper-linux-amd64"
    sha256 "f9615d1b657c9d909cf6c53156671638f1cae74e823aef4ffda1c3bb71734b04"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

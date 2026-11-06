class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.35"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.35/proper-darwin-arm64"
    sha256 "c42c6c32617d9bb948d6ccbb4c1a1f5f17174eee81c6e6382601b75a809f526f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.35/proper-darwin-amd64"
    sha256 "194f269286593150957a9b263071a3cc0c746ad320804216d88fa2b04c1c118b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.35/proper-linux-amd64"
    sha256 "5bbd840c7ee16f1f785c1bd053c4de897f5cb378435b57d68cc6a2b854145fce"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.35/proper-linux-arm64"
    sha256 "0e2ff97497e6516102954ce80e99ea54c730267e7f89660c9fa14cda319a1400"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.12"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.12/proper-darwin-arm64"
    sha256 "7537f6bbb28ab3b4ba690b5b7dfc6a6b3a4f57d4532e20f1968451c9050f1556"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.12/proper-darwin-amd64"
    sha256 "93c7a471a4a0af123b5e1702027a5bc077df9eb926a88b522e02712a4574f8e6"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.12/proper-linux-amd64"
    sha256 "ce8bed64e54db1156349331fc8135c5270e3e6a8b08f6a02b6258b2afca9bc99"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

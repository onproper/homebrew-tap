class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.31"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.31/proper-darwin-arm64"
    sha256 "f50e0fdaa216dc749eaab5f8cc92e24329d7f38c1f383f7d7c4cc87785a98844"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.31/proper-darwin-amd64"
    sha256 "2bd9068a54239cddf616ea05e9583808bce74d1c2208bb896d3d9202f00619e8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.31/proper-linux-amd64"
    sha256 "6a39d63b8e2c540bb0f222abdb84ef8c27d0089d9b80f1841b0265f6985de056"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.31/proper-linux-arm64"
    sha256 "01aa17ed1e819a71e6a4233d0376c697ceacdf750ad3077d8c2910fccc7e2ae6"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

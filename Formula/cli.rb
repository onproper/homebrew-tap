class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.23"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.23/proper-darwin-arm64"
    sha256 "f7a664361997b0cdae71c3735a4b326833cf77fb51d337aed05bef3b82ef21ab"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.23/proper-darwin-amd64"
    sha256 "3aac228b7166275b1820fd88c33b3984deeac5047845aa44126a8c4204d671ef"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.23/proper-linux-amd64"
    sha256 "8820131e56f204ebdc6552f36fc629592d2f598dc5f48c2768a8e9185a0634eb"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

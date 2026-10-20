class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.25"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.25/proper-darwin-arm64"
    sha256 "bd3d3c994bd8bf52c58ec630b89e14c20a4e29d6030ffba7604c48e25c542dd9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.25/proper-darwin-amd64"
    sha256 "5800eb1a38d8e100932a7cba878f69e50e60966d3ca5cc1d1fb6e289284513e4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.25/proper-linux-amd64"
    sha256 "529baa5d568517f13a9f162a25d75a27bd1452d737638ef3f986a9e58a9d1523"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.25/proper-linux-arm64"
    sha256 "d07d1346c77632a4d4ca1edf85b3db42103a3fd1f7489df240da093ab9042ced"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

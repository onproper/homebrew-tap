class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.15"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.15/proper-darwin-arm64"
    sha256 "57cede6402bccd1c8ca3c44224e7f7c18085f2eebebdd2a75d2e6548bf1e1aa1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.15/proper-darwin-amd64"
    sha256 "e630deea1b279ea95212a3e804137dbdc5d839728596a824f229cbf64e5f3cbd"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.15/proper-linux-amd64"
    sha256 "7c9036774a20359b623480b0d6715ca7eabe7ff4eb12d298c1663b4b60cfa04c"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

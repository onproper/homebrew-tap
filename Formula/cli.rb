class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.18"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.18/proper-darwin-arm64"
    sha256 "6dbabe59555a606db81e0c935b574f2b073cb6c54a0894b37519c8eb27a1a2cc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.18/proper-darwin-amd64"
    sha256 "da3d8700d28608369ffb5b7a13361f0596462943fb13a07ac6a3d5d23edcbdec"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.18/proper-linux-amd64"
    sha256 "ad7f30cc0a8302e47e58243fe5122cf53ace96c85916cd5d9a846b119230c2d3"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

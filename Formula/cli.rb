class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.28"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.28/proper-darwin-arm64"
    sha256 "dbd52d329fc569e3e738d5ef2c1542085de92a2f0f311fa0449061d285ff3cba"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.28/proper-darwin-amd64"
    sha256 "2e861eb9a48837bf109895e73b16339175e0a8123e2eba32a25dde466dcefee4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.28/proper-linux-amd64"
    sha256 "6191eae9b3f51fb672f4b75206470f2f33753771d414df39005d897cc521297b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.28/proper-linux-arm64"
    sha256 "a361dd60c745d44792b71996a4a404f2c79a824e2a07a1b26833eb490e1fee09"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

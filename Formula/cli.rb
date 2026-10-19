class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.19"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.19/proper-darwin-arm64"
    sha256 "561bf7f5ae629a6dffcb5576f8bf0712f5835be42de427515d20ae6aebaf49bc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.19/proper-darwin-amd64"
    sha256 "aff964901e3a92dd5ccd2af8b47baa503b3eaadb03069fc9cd7ebeb91eeb475c"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.19/proper-linux-amd64"
    sha256 "2cb38e578f923d7b97786c79fdc5e64ab76c6af2a6bf679760b0085db0f974c8"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

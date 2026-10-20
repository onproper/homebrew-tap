class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.22"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.22/proper-darwin-arm64"
    sha256 "97d9ef94c61a0bc5be5c424ce9ff63d2981457fcadd63b08be99c7a259644a24"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.22/proper-darwin-amd64"
    sha256 "459a65e6023be2a9829441d0f3f2015adff49868899bb57468df9d3d009463eb"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.22/proper-linux-amd64"
    sha256 "9823291095ca7c5abf982c3bf08abdaf58818556f6e7e1f6c57c56c909f4a731"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.32"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.32/proper-darwin-arm64"
    sha256 "655961594d9cb068cc098de62c17c42a03a0869f9f9c9485594a01bd04c83d9c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.32/proper-darwin-amd64"
    sha256 "c4f2e3ad6fedf12d1d77ee7dd87665553b9b896c92d4faccf9e7d1728032d1c5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.32/proper-linux-amd64"
    sha256 "86abf076bdf11376673089e52bb996d1ffd7de74ff1fb0b1a6fe3fc5b6c842e2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.32/proper-linux-arm64"
    sha256 "b7c02e93101944a25b952081666b3d841f465185da341e21291190a95d766e4e"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

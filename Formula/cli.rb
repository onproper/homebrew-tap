class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.14"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.14/proper-darwin-arm64"
    sha256 "bf557fcff17c4306d9dbb73131a352c64a0b5707558ef2a21fda6a852240419e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.14/proper-darwin-amd64"
    sha256 "fd8cff6f040d381ea98e48b0eacc5a6d1fea5010aeeb6a8c81c83a1243e7bc32"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.14/proper-linux-amd64"
    sha256 "0ec4529d7c616eb7942b3c546a16813ce97459919c590bf3dfc2e5417b78c2b6"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

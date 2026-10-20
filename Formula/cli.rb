class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.27"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.27/proper-darwin-arm64"
    sha256 "71aaa36b845b79a2ef2e4fce50cab14e1752c13c681aced7a56fdb314acce849"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.27/proper-darwin-amd64"
    sha256 "86be0d8f2ceaefeb037de4779fff86b4eab76dfbdeef9c1726a5032faca0bfa0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.27/proper-linux-amd64"
    sha256 "3fa992d5430b598ed7750b6874727b3f66f4783700b3983ffb57d421dcf69df1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.27/proper-linux-arm64"
    sha256 "f1cf8dec3f9d5cf9a4e8de2ca8f308a47e0d2ce1aca613a55ab57e600ce9d5f0"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

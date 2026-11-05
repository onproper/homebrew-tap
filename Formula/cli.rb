class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.34"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.34/proper-darwin-arm64"
    sha256 "d4ef1a661699a9c70c23549f1885e2270ece8bfc9f2417a87cd44cbe28e05405"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.34/proper-darwin-amd64"
    sha256 "40d0eb1a17f663c044c042904455e21771d4bac0fb2db40b5aa2e2ad8a7c6118"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.34/proper-linux-amd64"
    sha256 "1ef2bfd777d1293f2aa21df9782b8b32660817199774d674b8817faa2add8bee"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.34/proper-linux-arm64"
    sha256 "c7178c7d7e4ea3a5cf064864417787db5682a0890ccc4e6bab76873d224596ef"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.30"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.30/proper-darwin-arm64"
    sha256 "dec7ae483726fed985a238b8b476d368a88a73449fb21a326686476f0ee82e0b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.30/proper-darwin-amd64"
    sha256 "e6baacc65e5019b074d471501dd46c47107064daa547db8c39428182d024e886"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.30/proper-linux-amd64"
    sha256 "4f4d23e88cad7fab6d5e56a46f05bdc21541c2f7099eb28e055ca3ee4c1a5eeb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.30/proper-linux-arm64"
    sha256 "4872092ef8a1931fbda5c200865000113f501e00aa01b557e9027a11f1ab19b3"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

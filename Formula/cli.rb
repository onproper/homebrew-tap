class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.26"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.26/proper-darwin-arm64"
    sha256 "e5850de9ceb3af9bc68b00a96143d5749f84db95f8b68328f5d22caa06a081f4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.26/proper-darwin-amd64"
    sha256 "8e0be3851f98ef3a3be71b6746bcb119fa27d45ef1f2b29e6fdf9280b0bebf82"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.26/proper-linux-amd64"
    sha256 "618a55bd393ec6f22ad3e344e4270bdff65e3731895c284f5ce97ffd9d13b421"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.26/proper-linux-arm64"
    sha256 "4fe3c07d7cfd48579e440ef44940437bb1b9db2def56dd4156c456e0442a5748"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.16"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.16/proper-darwin-arm64"
    sha256 "550258e39bf02e54e81552bccefe19d6850a1d48ca55b4d7d554df7fd8711258"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.16/proper-darwin-amd64"
    sha256 "34def9c94dc280328babc1fa40730cdadd8c04cac8095b320bbb9b1fee4e7b25"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.16/proper-linux-amd64"
    sha256 "1e2e4855a8193e4e38f653ce8aeaec6072704cee8af38e519b5ad929f8209e2c"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

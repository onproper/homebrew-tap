class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.29"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.29/proper-darwin-arm64"
    sha256 "974548e5940a08810fbbcbb4265be85a8da1652d80babdfae329496bffa07257"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.29/proper-darwin-amd64"
    sha256 "9279be8b24a6bf1ef6deac5cdc5aea744ddb705abfb78e2fc298c6c08d246d06"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.29/proper-linux-amd64"
    sha256 "ba2f9c3f86d8615bdc9da7c0a3cdd6f8e0d32f8adbfcc64cae19d68b43691e6f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.29/proper-linux-arm64"
    sha256 "785f7ff064fd4f55bb07a65003fd03c1ef7a8416ba815e94e3b0a74c7581018b"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

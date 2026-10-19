class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.17"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.17/proper-darwin-arm64"
    sha256 "7ec31cacb0164baaea8e8c2dffc84c948a5016bc6a68fc3693c949aa5cca3e40"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.17/proper-darwin-amd64"
    sha256 "a4c3687a9a954b22c669e872f643b512929b762e4405fee187963104baede566"
  elsif OS.linux?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.17/proper-linux-amd64"
    sha256 "9f61a188a5f0fd441667576bc93a220322b2140ec0106ad6ad8112a1072e4ad5"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

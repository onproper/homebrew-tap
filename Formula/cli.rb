class Cli < Formula
  desc "Zero-Trust Entity Orchestration & CDC Engine"
  homepage "https://onproper.com"
  version "1.0.33"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.33/proper-darwin-arm64"
    sha256 "675545c75ef8c7e29e25d90db564363ef9369bf48f90ca5c700a89bd05140d2f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.33/proper-darwin-amd64"
    sha256 "0841519b31e8d2a4ec61e5ff4126cca001dfd8e819b53f560d0212fbd8d3f9be"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.33/proper-linux-amd64"
    sha256 "c41bae58ae3f16c4407eb594ebb311a615cc7d4df7ed5830f42530b76668c4a4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/onproper/proper-release/releases/download/v1.0.33/proper-linux-arm64"
    sha256 "e3c53fa2c1df06452cb55d76c86d8c8b247bdcdca5c03879ccb8a3a8956ed07c"
  end

  def install
    bin.install Dir["proper-*"].first => "proper"
  end
end

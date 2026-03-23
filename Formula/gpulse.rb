class Gpulse < Formula
  desc "Real-time GPU monitoring with leak detection and OOM prediction"
  homepage "https://gpulse.ai"
  version "2.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gpulseai/gpulse/releases/download/v2.1.0/gpulse-v2.1.0-darwin-arm64.tar.gz"
      sha256 "9c7b9276af39c46d9190514a6038723f71d743aa8fe8c1d81d57c9760b1260d2"
    end
  end

  def install
    bin.install "gpulse"
  end

  test do
    assert_match "gpulse", shell_output("#{bin}/gpulse --version", 0)
  end
end

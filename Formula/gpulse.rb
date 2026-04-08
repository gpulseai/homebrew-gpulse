class Gpulse < Formula
  desc "Real-time GPU monitoring with leak detection and OOM prediction"
  homepage "https://gpulse.ai"
  version "2.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gpulseai/gpulse/releases/download/v2.3.0/gpulse-v2.3.0-darwin-arm64.tar.gz"
      sha256 "e4db7784c685438965a789c636f6b1361b0b863fd5ff9ec8eba753729c86664f"
    end
  end

  def install
    bin.install "gpulse"
  end

  test do
    assert_match "gpulse", shell_output("#{bin}/gpulse --version", 0)
  end
end

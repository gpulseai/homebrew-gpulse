class Gpulse < Formula
  desc "Real-time GPU monitoring with leak detection and OOM prediction"
  homepage "https://gpulse.ai"
  version "2.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gpulseai/gpulse/releases/download/v2.2.0/gpulse-v2.2.0-darwin-arm64.tar.gz"
      sha256 "71576797b0737b8fa57b920847557517778a9094c045bb752c9ee94da9f08efc"
    end
  end

  def install
    bin.install "gpulse"
  end

  test do
    assert_match "gpulse", shell_output("#{bin}/gpulse --version", 0)
  end
end

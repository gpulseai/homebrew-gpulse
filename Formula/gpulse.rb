class Gpulse < Formula
  desc "Real-time GPU monitoring with leak detection and OOM prediction"
  homepage "https://gpulse.ai"
  version "2.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gpulseai/gpulse/releases/download/v2.2.0/gpulse-v2.2.0-darwin-arm64.tar.gz"
      sha256 "e5008b0a66b4c7bc7fb8949fb30e847b466738c4c34cab36e840708805232156"
    end
  end

  def install
    bin.install "gpulse"
  end

  test do
    assert_match "gpulse", shell_output("#{bin}/gpulse --version", 0)
  end
end

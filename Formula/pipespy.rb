class Pipespy < Formula
  desc "Real-time pipeline debugger — pv shows bytes, pipespy shows your data"
  homepage "https://github.com/jasonm4130/pipespy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-arm64.tar.gz"
      sha256 "d91869f965b1f081a598a70e4824e5e925b61420257a8a42d4124d5e7a6394ba"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-amd64.tar.gz"
      sha256 "579be288bd48e2e6425c2cc1db891f426eea4250b88a4dda5712d044daa9b610"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-arm64.tar.gz"
      sha256 "e98a93bb8d0c733ff47f5e6ca13853efbf6a3d03607462330bf3e586e64a6ae0"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-amd64.tar.gz"
      sha256 "1fbcb77924b9c837494fe73d622e2b18b4de342802e4178ea38a104ae8118da1"
    end
  end

  def install
    bin.install "pipespy"
  end

  test do
    assert_match "pipespy", shell_output("#{bin}/pipespy --version")
  end
end

class Pipespy < Formula
  desc "Real-time pipeline debugger — pv shows bytes, pipespy shows your data"
  homepage "https://github.com/jasonm4130/pipespy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "pipespy"
  end

  test do
    assert_match "pipespy", shell_output("#{bin}/pipespy --version")
  end
end

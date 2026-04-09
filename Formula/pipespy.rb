class Pipespy < Formula
  desc "Real-time pipeline debugger — pv shows bytes, pipespy shows your data"
  homepage "https://github.com/jasonm4130/pipespy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-arm64.tar.gz"
      sha256 "3e96659f2782d013a5b24fa1aae5dbc456d650ea5992c6698bdbb8c46994b55e"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-amd64.tar.gz"
      sha256 "6750d0ce7dc864228fe89ac9d4b488d77bcfa8a8cd95c1f77931ebc906bdc664"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-arm64.tar.gz"
      sha256 "b568afea6718d12cd7037318ec6eec565d65e7f2f7469d2443868f6a7491592e"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-amd64.tar.gz"
      sha256 "402e7f18c5c0a7555bfded6c8ec9b61e75aba378bb919b1e835589c66105c5d5"
    end
  end

  def install
    bin.install "pipespy"
  end

  test do
    assert_match "pipespy", shell_output("#{bin}/pipespy --version")
  end
end

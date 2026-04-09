class Pipespy < Formula
  desc "Real-time pipeline debugger — pv shows bytes, pipespy shows your data"
  homepage "https://github.com/jasonm4130/pipespy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-arm64.tar.gz"
      sha256 "c995618bda2fd8b7a206a664bdd3d22f1bb0a8b88a9d612cbf6b7ebd208e47cf"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-darwin-amd64.tar.gz"
      sha256 "6c0750ed9cd5c0c19d8f0d87d1d0dba8b49f08702f77c1ef332150d67be7bb60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-arm64.tar.gz"
      sha256 "495c7cac447ae530699272beb03d7134095353ec61c4410ed06b384c9b6b5941"
    else
      url "https://github.com/jasonm4130/pipespy/releases/download/v#{version}/pipespy-linux-amd64.tar.gz"
      sha256 "e9dec897c295b5392ab0ffb83b48200b4012333ff36ee7b974e450cd102bf3a7"
    end
  end

  def install
    bin.install "pipespy"
  end

  test do
    assert_match "pipespy", shell_output("#{bin}/pipespy --version")
  end
end

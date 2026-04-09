class Pipeview < Formula
  desc "Real-time pipeline debugger — pv shows bytes, pipeview shows your data"
  homepage "https://github.com/jasonm4130/pipeview"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-darwin-arm64.tar.gz"
      sha256 "703fde4441d8452bd4c6d145d502fa2d00a39ba8e9f3bb0c95b81131005161d6"
    else
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-darwin-amd64.tar.gz"
      sha256 "2903cd7f70eefe4df6b5d9797e1f57d2263db74064521b65981572a35b6f4a2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-linux-arm64.tar.gz"
      sha256 "6bc5882b55fe63c9e700d189854e8998e77476b82dd60093b449a190503a1364"
    else
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-linux-amd64.tar.gz"
      sha256 "10f9a9d3b84c1cbd5d616e5eae7420585fb8f69f1476f6499fddaedbe3d8adec"
    end
  end

  def install
    bin.install "pipeview"
  end

  test do
    assert_match "pipeview", shell_output("#{bin}/pipeview --version")
  end
end

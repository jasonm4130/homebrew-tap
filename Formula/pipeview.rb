class Pipeview < Formula
  desc "Real-time pipeline debugger — pv shows bytes, pipeview shows your data"
  homepage "https://github.com/jasonm4130/pipeview"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-darwin-arm64.tar.gz"
      sha256 "206424f32a5c918d30e4d705817adba054ab63e0fc91b5c3b91db5f4e9d3dacf"
    else
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-darwin-amd64.tar.gz"
      sha256 "5b4ac78602af87cc1f81f435de30e8c2cc7de644935cb0cc2698819ea694d649"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-linux-arm64.tar.gz"
      sha256 "9ac55a08a9dcfdc3016a51cee399ea0e68149ec23a9255e04f4441232f50a184"
    else
      url "https://github.com/jasonm4130/pipeview/releases/download/v#{version}/pipeview-linux-amd64.tar.gz"
      sha256 "6de03790f83f6af2a525da71d5da2acef22d2b9a7085e4b662f2728c153b694f"
    end
  end

  def install
    bin.install "pipeview"
  end

  test do
    assert_match "pipeview", shell_output("#{bin}/pipeview --version")
  end
end

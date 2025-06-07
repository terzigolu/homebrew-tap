class Jbraincli < Formula
  desc "A powerful CLI tool for managing tasks, projects, and persistent memory"
  homepage "https://github.com/terzigolu/josepshbrain-go"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/terzigolu/josepshbrain-go/releases/download/v1.0.1/josepshbrain-go_Darwin_arm64.tar.gz"
      sha256 "1b5bc4710ec127905a74dd4ebfe0764ed1fac526547e79e13ce631a48cbb1a9d"
    else
      url "https://github.com/terzigolu/josepshbrain-go/releases/download/v1.0.1/josepshbrain-go_Darwin_x86_64.tar.gz"
      sha256 "f9308fd19d9d71064012ab81d0404063e631cdc1d7e384d83901f083ef3ada94"
    end
  end

  def install
    bin.install "jbraincli"
  end

  test do
    system "#{bin}/jbraincli", "--help"
  end
end
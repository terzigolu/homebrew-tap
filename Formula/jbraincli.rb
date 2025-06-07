class Jbraincli < Formula
  desc "A powerful CLI tool for managing tasks, projects, and persistent memory"
  homepage "https://github.com/terzigolu/josepshbrain-go"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/terzigolu/josepshbrain-go/releases/download/v1.0.0/josepshbrain-go_Darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/terzigolu/josepshbrain-go/releases/download/v1.0.0/josepshbrain-go_Darwin_x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "jbraincli"
  end

  test do
    system "#{bin}/jbraincli", "--help"
  end
end
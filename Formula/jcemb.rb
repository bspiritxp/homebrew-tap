class Jcemb < Formula
  desc "Local-first CLI for Markdown vector search"
  homepage "https://github.com/bspiritxp/jcemb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.2.0/jcemb_v0.2.0_darwin_arm64.tar.gz"
      sha256 "7733a483f2fdda3b03288929ea38afcf9dc537bf37059f3416540e0349c92b17"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.2.0/jcemb_v0.2.0_darwin_amd64.tar.gz"
      sha256 "4853e2c4e43191aa4578a41ead55484964eaf222e7901447e2164df498bcdd56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.2.0/jcemb_v0.2.0_linux_arm64.tar.gz"
      sha256 "a275d5698368b45834ccff27e3534ad5b38941dbea3040af862f695449a53599"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.2.0/jcemb_v0.2.0_linux_amd64.tar.gz"
      sha256 "bb5f57a53c5b3ad8e0dfe3304f26b00675fdd85801f7c65915362786e097d7e3"
    end
  end

  def install
    bin.install "jcemb"
  end

  test do
    system "#{bin}/jcemb", "--help"
  end
end

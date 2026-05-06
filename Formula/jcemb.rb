class Jcemb < Formula
  desc "Local-first CLI for Markdown vector search"
  homepage "https://github.com/bspiritxp/jcemb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.3.0/jcemb_v0.3.0_darwin_arm64.tar.gz"
      sha256 "3dd8315c7a7e5cdc240c80c4f29867d1cd0876c72cb2e54a67de9a8b95359a74"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.3.0/jcemb_v0.3.0_darwin_amd64.tar.gz"
      sha256 "981e3bfc40f24e597430535c8eb87c06329f26866a1f67c8af46556ad4c2fe02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.3.0/jcemb_v0.3.0_linux_arm64.tar.gz"
      sha256 "42db8840a7386f3a7a08d7872b9eca1f5fc7c6a09bf1bf0da1d9e2b50c123cfa"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v0.3.0/jcemb_v0.3.0_linux_amd64.tar.gz"
      sha256 "5273a35fcc4e3450ecf5e1babccdfbd5819c56759214345faf18050359771286"
    end
  end

  def install
    bin.install "jcemb"
  end

  test do
    system "#{bin}/jcemb", "--help"
  end
end

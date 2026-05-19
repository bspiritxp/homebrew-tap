class Jcemb < Formula
  desc "Local-first CLI for Markdown vector search"
  homepage "https://github.com/bspiritxp/jcemb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.0/jcemb_v1.0.0_darwin_arm64.tar.gz"
      sha256 "0de1e5be200fdfdeefa912de0529248ab88699eff1a36a485989fe4e2fa5a984"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.0/jcemb_v1.0.0_darwin_amd64.tar.gz"
      sha256 "d1c105f3312510270548d01e3393573fb971047dcb4c638cbb56d13367e186f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.0/jcemb_v1.0.0_linux_arm64.tar.gz"
      sha256 "8ba51ccd3900ec8c92e437f940886f8e11adae67ebdca1e321bbdc4ff95eb01d"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.0/jcemb_v1.0.0_linux_amd64.tar.gz"
      sha256 "f0da3aaecb1ee59ba1e2f24019cb84e9e38ea46261d9de7c12707367b2b0c81b"
    end
  end

  def install
    bin.install "jcemb"
  end

  test do
    system "#{bin}/jcemb", "--help"
  end
end

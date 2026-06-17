class Jcemb < Formula
  desc "Local-first CLI for Markdown vector search"
  homepage "https://github.com/bspiritxp/jcemb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.1/jcemb_v1.0.1_darwin_arm64.tar.gz"
      sha256 "94c664079e27d6239f8e0779143655ee97bacae07732ca680c6a835cb5f74a4f"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.1/jcemb_v1.0.1_darwin_amd64.tar.gz"
      sha256 "24698a6203a24618f3594dbdf0b462a2c140181859b70a30e0a0030a44e8df44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.1/jcemb_v1.0.1_linux_arm64.tar.gz"
      sha256 "0972207da84bc034c8dbcbd8574824181585ff4d6fd65d077f363ea257af98d4"
    else
      url "https://github.com/bspiritxp/jcemb/releases/download/v1.0.1/jcemb_v1.0.1_linux_amd64.tar.gz"
      sha256 "12c4fcfb91a824111323e086762b5ad079a56a3d9acd577180a48556c6b64c2f"
    end
  end

  def install
    bin.install "jcemb"
  end

  test do
    system "#{bin}/jcemb", "--help"
  end
end

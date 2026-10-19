class Peacock < Formula
  desc "Beautiful JSON log viewer for your terminal."
  homepage "https://github.com/dubeyKartikay/peacock"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.5.0/peacock_Darwin_arm64.tar.gz"
      sha256 "865e30d11474aeb0aabc5cd8278b2e2e8dfff538e573e1a2d4b23c829f558ea4"
    end
    on_intel do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.5.0/peacock_Darwin_x86_64.tar.gz"
      sha256 "da1185f5097936551ce467b3ef67ccad95dce555e95f19331613b5df7fe08e98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.5.0/peacock_Linux_arm64.tar.gz"
      sha256 "b25f2f72d046c1bd0dc1963dd461317061fe20461d6a9e83743199c6c4de2811"
    end
    on_intel do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.5.0/peacock_Linux_x86_64.tar.gz"
      sha256 "f993cd7edb50a8b4eaf70c6821fe6f153213e3066bf11aa3b99f0d29a1b584fd"
    end
  end

  def install
    bin.install "peacock"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/peacock version").strip
  end
end

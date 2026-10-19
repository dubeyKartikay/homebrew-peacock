class Peacock < Formula
  desc "Beautiful JSON log viewer for your terminal."
  homepage "https://github.com/dubeyKartikay/peacock"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.4.0/peacock_Darwin_arm64.tar.gz"
      sha256 "67388b559f6df13b51e2fac234ce3a790f24328f4b50c5651afc4b8348bedf36"
    end
    on_intel do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.4.0/peacock_Darwin_x86_64.tar.gz"
      sha256 "78af10edc7256a801c89d577db88400f3319be745f1d8ece4b8d347e476de320"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.4.0/peacock_Linux_arm64.tar.gz"
      sha256 "adef10676db6e15cc51f2333bc7f551fba76835db484db344ebcab26e63a9080"
    end
    on_intel do
      url "https://github.com/dubeyKartikay/peacock/releases/download/v0.4.0/peacock_Linux_x86_64.tar.gz"
      sha256 "93aa2d8f36ba3fa23289d18e840a63ecc652a6ff732bffe43326ba9a0eafe52b"
    end
  end

  def install
    bin.install "peacock"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/peacock version").strip
  end
end

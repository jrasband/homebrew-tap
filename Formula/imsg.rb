class Imsg < Formula
  desc "Read iMessages from the command line"
  homepage "https://github.com/jrasband/imsg"
  url "https://github.com/jrasband/imsg/archive/refs/heads/main.tar.gz"
  sha256 "adaf7c1eff94dd4e06db81f144a514bb1ee07767bb9e27360b7e1dfa7c2c392f"
  license "MIT"

  depends_on xcode: ["13.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--configuration", "release",
           "--disable-sandbox"
    bin.install ".build/release/imsg"
  end

  test do
    system "#{bin}/imsg", "--help"
  end
end

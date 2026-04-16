class Imsg < Formula
  desc "Read iMessages from the command line"
  homepage "https://github.com/jrasband/imsg"
  url "https://github.com/jrasband/imsg/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "9ec6bb2aa29363a81ab346c50284735e88fc80256271197b8fe020dd0447563b"
  version "0.5.0"
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

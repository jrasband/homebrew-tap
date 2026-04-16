class Imsg < Formula
  desc "Read iMessages from the command line"
  homepage "https://github.com/jrasband/imsg"
  url "https://github.com/jrasband/imsg/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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

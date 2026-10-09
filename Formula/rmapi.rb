class Rmapi < Formula
  desc "CLI for accessing the reMarkable cloud"
  homepage "https://github.com/jrasband/rmapi"
  url "https://github.com/jrasband/rmapi/archive/refs/tags/v0.0.35.tar.gz"
  sha256 "9e2c0898a7fcaa716879e86165911af7f2caa951c8db56e9ab0ae07554536e7d"
  license "AGPL-3.0-only"
  head "https://github.com/jrasband/rmapi.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/juruen/rmapi/version.Version=#{version}")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/rmapi version").strip
    assert_match "Offline Commands:", shell_output("#{bin}/rmapi -h")
  end
end

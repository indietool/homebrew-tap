class Indietool < Formula
  desc "CLI tool for indie builders to manage domains, DNS, and secrets"
  homepage "https://indietool.dev"
  url "https://github.com/indietool/cli/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "01843506702f0a35c5377214c41c0e2ab1243bd2ff6843663e58d2ab283b661e"
  license "MIT"
  head "https://github.com/indietool/cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/indietool"
  end

  test do
    output = shell_output("#{bin}/indietool --version 2>&1", 1)
    assert_match "indietool", output
  end
end
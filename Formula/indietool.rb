class Indietool < Formula
  desc "CLI tool for indie builders to manage domains, DNS, and secrets"
  homepage "https://indietool.dev"
  url "https://github.com/indietool/cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6b3be78d78c8766986f2f2c2377d7134cba8a401315561d2d497ea60b201010e"
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
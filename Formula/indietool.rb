# typed: false
# frozen_string_literal: true

class Indietool < Formula
  desc "An all-in-one tool for unified infrastructure management"
  homepage "https://github.com/indietool/cli"
  version "0.0.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/indietool/cli/releases/download/v0.0.7/indietool-0.0.7-darwin-amd64.tar.gz"
      sha256 "03ef5f462759dc7213c09d79f0256d03c947662643b8671163234a29395a3f24"
    end
    on_arm do
      url "https://github.com/indietool/cli/releases/download/v0.0.7/indietool-0.0.7-darwin-arm64.tar.gz"
      sha256 "9f8aebb82b430d52376beaa0d6e7b80918258f0c98326e884b9f42028b94609c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indietool/cli/releases/download/v0.0.7/indietool-0.0.7-linux-amd64.tar.gz"
      sha256 "a642e3030e656ef9f9d992b3011f0b6643ae028bfde523ddc4cc6362594af3f0"
    end
    on_arm do
      url "https://github.com/indietool/cli/releases/download/v0.0.7/indietool-0.0.7-linux-arm64.tar.gz"
      sha256 "8c298cac2707d1c1e58029d30dd8c24682dd7cc42116137960d6e106a91cd30a"
    end
  end

  def install
    bin.install "indietool"
    generate_completions_from_executable(bin/"indietool", "completion")
  end

  test do
    system "#{bin}/indietool", "--version"
  end
end

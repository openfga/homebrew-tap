# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openfga < Formula
  desc "A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar."
  homepage "https://openfga.dev/"
  version "1.3.9"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openfga/openfga/releases/download/v1.3.9/openfga_1.3.9_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "afcb6e4ef0b3574938cdfe05b8defd330d7244e1182ea5b957273f9ae84ed39d"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openfga/openfga/releases/download/v1.3.9/openfga_1.3.9_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c0701470eae07108ab30c1332d99f5b0bb7ab8892d481480f91e11e046e6c16d"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/openfga/releases/download/v1.3.9/openfga_1.3.9_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a229995e3c7e9dbe2c705377885144e4b996a119f9eb619781f0a9d088430cb1"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/openfga/releases/download/v1.3.9/openfga_1.3.9_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9a92a511ece22d4be1c9c0e577d9c1e4984be312ce84532e0157bb8cf91fe9b"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
  end

  head "https://github.com/openfga/openfga.git", :branch => "main"

  test do
    system "#{bin}/openfga version"
  end
end

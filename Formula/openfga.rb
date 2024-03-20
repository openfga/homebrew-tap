# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openfga < Formula
  desc "A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar."
  homepage "https://openfga.dev/"
  version "1.5.1"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/openfga/releases/download/v1.5.1/openfga_1.5.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1abf63842a4054f8ac51daf98e30a0c5a9c772b93eba8e59fcc4156ea1221185"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/openfga/releases/download/v1.5.1/openfga_1.5.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4fec2db2e0a4839153c145d32e9aa42f036943cf14cf312bb0b66e1d421fa42e"

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
      url "https://github.com/openfga/openfga/releases/download/v1.5.1/openfga_1.5.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ec1f785eddc7afb1d64281a9486a9bdf6fbc895a1390bd44506ece36fb479cc6"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/openfga/releases/download/v1.5.1/openfga_1.5.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ec09bda3c1e2bd6cc98c17e2bea6e7d68ca3a540c382739afe9a74ecaa517174"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openfga < Formula
  desc "A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar."
  homepage "https://openfga.dev/"
  version "1.3.5"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/openfga/releases/download/v1.3.5/openfga_1.3.5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "45486eb03f6f4473dec9588b97c018ffad3834b3062a6ca3ac1c8c19b5cea047"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/openfga/releases/download/v1.3.5/openfga_1.3.5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "816a4cd51e91dc91c680d8af358a0b297107d0f1b74cb7a50a559cb5d6b76c8d"

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
      url "https://github.com/openfga/openfga/releases/download/v1.3.5/openfga_1.3.5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e41bc33688d55d6f3bddecb89c35021ae56334ed40fff14b21cae0407e2962a0"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/openfga/releases/download/v1.3.5/openfga_1.3.5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b11f5957a702f16371c8c6d2ef0c1bd5cfd59ed72c5327a647a8c807519a9f2c"

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

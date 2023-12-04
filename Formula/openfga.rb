# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openfga < Formula
  desc "A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar."
  homepage "https://openfga.dev/"
  version "1.3.8"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/openfga/releases/download/v1.3.8/openfga_1.3.8_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "15e7da6a584417c3f9d0437ab77028f182280cd26b6ee9afb3e532f5b103d745"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/openfga/releases/download/v1.3.8/openfga_1.3.8_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0dcb404127732f40caa7fa15ac32427393627bfd09d23d1fed2e4c683dc287a4"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/openfga/releases/download/v1.3.8/openfga_1.3.8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2cf1076930499eb4b4673a1dbc82b46d402c748fd1f010fbf1271e402e7b8380"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openfga/openfga/releases/download/v1.3.8/openfga_1.3.8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c093ea60c7a7925a8aa180d063c1b5ae15906ad5219ca6467b3b598d4819faa2"

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

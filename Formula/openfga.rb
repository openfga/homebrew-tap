# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openfga < Formula
  desc "A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar."
  homepage "https://openfga.dev/"
  version "1.5.7"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/openfga/openfga/releases/download/v1.5.7/openfga_1.5.7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9d3ead067cb651e7cbd32a5aae9529ddf02a79cd4b5adc6a88e5e1250edc8964"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    on_arm do
      url "https://github.com/openfga/openfga/releases/download/v1.5.7/openfga_1.5.7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "28787e3ea2e8621c6de9714ea3e737494668c4db2df38b150916c749262e3b01"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openfga/openfga/releases/download/v1.5.7/openfga_1.5.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "eb37df3212c402b96f0b11f81cfadfcb3c5750fc7e601f7cc084e9ce94123fdb"

        def install
          bin.install "openfga"
          bash_completion.install "completions/openfga.bash" => "goreleaser"
          zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
          fish_completion.install "completions/openfga.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openfga/openfga/releases/download/v1.5.7/openfga_1.5.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "21f3ef9e5c9436be0cb26cad11954584ca137c2b6ffb5efbe2c33941b975e942"

        def install
          bin.install "openfga"
          bash_completion.install "completions/openfga.bash" => "goreleaser"
          zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
          fish_completion.install "completions/openfga.fish"
        end
      end
    end
  end

  head "https://github.com/openfga/openfga.git", :branch => "main"

  test do
    system "#{bin}/openfga version"
  end
end

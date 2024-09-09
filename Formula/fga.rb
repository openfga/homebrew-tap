# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fga < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.6.1"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/openfga/cli/releases/download/v0.6.1/fga_0.6.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ee74bf6eee75ce0d7660c43857cbaf686eebf158a207d316c30b760d4f7f50f0"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    on_arm do
      url "https://github.com/openfga/cli/releases/download/v0.6.1/fga_0.6.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2ce01a88561e1dacd94a7171cf1462d66bb47aed9b120aae3d026a9fa2e6608f"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openfga/cli/releases/download/v0.6.1/fga_0.6.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "1f02d78c00fd1362982d8d7880473f59f72daf08ccffb604e3d19bd4d69ceaa8"

        def install
          bin.install "fga"
          bash_completion.install "completions/fga.bash" => "fga"
          zsh_completion.install "completions/fga.zsh" => "_fga"
          fish_completion.install "completions/fga.fish"
          man1.install "manpages/fga.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openfga/cli/releases/download/v0.6.1/fga_0.6.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "46cc77cf8cb84bbfd109015f66191a71391edef742b39ca728a2fefec0275ed9"

        def install
          bin.install "fga"
          bash_completion.install "completions/fga.bash" => "fga"
          zsh_completion.install "completions/fga.zsh" => "_fga"
          fish_completion.install "completions/fga.fish"
          man1.install "manpages/fga.1.gz"
        end
      end
    end
  end

  head "https://github.com/openfga/cli.git", :branch => "main"

  test do
    system "#{bin}/fga version"
  end
end

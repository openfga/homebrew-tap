# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fga < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.6.5"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/cli/releases/download/v0.6.5/fga_0.6.5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ebee2f63ca9ada23d957c81447e8d4ada886137b652a07997ca82ed2d7aecce3"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/cli/releases/download/v0.6.5/fga_0.6.5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1087d2fd70b9acd372aea04671854a0544ab1c5c30aa0ae91050d44e6792f5c3"

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
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openfga/cli/releases/download/v0.6.5/fga_0.6.5_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "f5fc6a8e38260c8858f8724d268e4ccbd792a57436b2a6c56dd9ac06b91aa7f4"

        def install
          bin.install "fga"
          bash_completion.install "completions/fga.bash" => "fga"
          zsh_completion.install "completions/fga.zsh" => "_fga"
          fish_completion.install "completions/fga.fish"
          man1.install "manpages/fga.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openfga/cli/releases/download/v0.6.5/fga_0.6.5_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "156a122805cd007614fbec5d61abd7c32195ee410eefb0eb0365974c77430b34"

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

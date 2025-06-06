# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fga < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.6.6"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/cli/releases/download/v0.6.6/fga_0.6.6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "70609df9f24c484228ecf65bc546f93c36e3c791de461a96475b2006a718d462"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/cli/releases/download/v0.6.6/fga_0.6.6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0199f1a02d20d2a61c0b5c224cae4cca9c1ce1eaad1dd4a99e031589cbef62f2"

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
        url "https://github.com/openfga/cli/releases/download/v0.6.6/fga_0.6.6_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "5b1dd5eccdbe8eb34ce59989003ac7aaf78abf7c83756e90cbf14c15aa0b9493"

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
        url "https://github.com/openfga/cli/releases/download/v0.6.6/fga_0.6.6_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "517184c3ee834906f0dcb852aa83a6dcc1242add2b8dfed6d1fcbd459c60fcf4"

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

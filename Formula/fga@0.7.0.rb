# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FgaAT070 < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.7.0"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/cli/releases/download/v0.7.0/fga_0.7.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d2156d51870d8ec1afc224ead06979c52a7815f6c8e9992ee46378bc4870957"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/cli/releases/download/v0.7.0/fga_0.7.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c5afde3bf09555db0548c8dd24086d6fc4f92b1acc5b3f7780c64f7d881af7ed"

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
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/cli/releases/download/v0.7.0/fga_0.7.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "41c4cbf91b9d50b8b5c483be84f75759baf0b919cf26db98d5d110630db5fa80"
      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/cli/releases/download/v0.7.0/fga_0.7.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7c74f2efe46bdd8990b431c6649505adbf89e55ffb70c48f89049519d57e0d6d"
      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
  end

  head "https://github.com/openfga/cli.git", :branch => "main"

  test do
    system "#{bin}/fga version"
  end
end

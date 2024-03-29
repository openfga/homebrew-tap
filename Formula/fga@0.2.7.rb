# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FgaAT027 < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.2.7"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openfga/cli/releases/download/v0.2.7/fga_0.2.7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5c47a351aa6b8cff9d0b95d6b50a452544200f32693e47587923b500a7257256"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/openfga/cli/releases/download/v0.2.7/fga_0.2.7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b08013933cb4f60bd072ca6fb4db2f82c8dccf5ba1a8785079118d3e324b7b57"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openfga/cli/releases/download/v0.2.7/fga_0.2.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fafe2ff658a0f0c9febf83367263a12a7e268ecb17ec903a38675c733741d630"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openfga/cli/releases/download/v0.2.7/fga_0.2.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ae37eef9253adebcacb1effc7ad3940c84e7f43f485f26159bc5706c5acf0965"

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

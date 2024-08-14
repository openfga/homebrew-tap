# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openfga < Formula
  desc "A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar."
  homepage "https://openfga.dev/"
  version "1.5.9"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/openfga/openfga/releases/download/v1.5.9/openfga_1.5.9_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d027bbec272d8fb46f5abe39b690d62884787ea9243030fc292c38ae7c00afd7"

      def install
        bin.install "openfga"
        bash_completion.install "completions/openfga.bash" => "goreleaser"
        zsh_completion.install "completions/openfga.zsh" => "_goreleaser"
        fish_completion.install "completions/openfga.fish"
      end
    end
    on_arm do
      url "https://github.com/openfga/openfga/releases/download/v1.5.9/openfga_1.5.9_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ade00b06eb7b8471829661e23f4eb357d951dabd8d90a16391a49b80b407504b"

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
        url "https://github.com/openfga/openfga/releases/download/v1.5.9/openfga_1.5.9_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "f49f23f39709f2cd5163975252bd1b7dc1d17150f3193c053ea65365983ce6c4"

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
        url "https://github.com/openfga/openfga/releases/download/v1.5.9/openfga_1.5.9_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "4577f336f53f1e71f66a0ee66583c20468d67daf20a25be8ea93961e3f213417"

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

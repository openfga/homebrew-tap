# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FgaAT060 < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.6.0"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/openfga/cli/releases/download/v0.6.0/fga_0.6.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c6baba3540353b3e0954d267c8f24aef64531c0200c4b321d286cb254db84089"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    on_arm do
      url "https://github.com/openfga/cli/releases/download/v0.6.0/fga_0.6.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "32bf67bb5c31eedcf6ffcff2af9582b9c112248912de996647445479457ba7c9"

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
        url "https://github.com/openfga/cli/releases/download/v0.6.0/fga_0.6.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "67336179f0cd193a9f4af5bc626d22bf93bae71764b460cc06e96d64dca1efca"

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
        url "https://github.com/openfga/cli/releases/download/v0.6.0/fga_0.6.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "2ecdc6a8210f4b8fa56935788bd172c46c13a2b79e6b6f39c1d72b181f524779"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fga < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.5.1"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/openfga/cli/releases/download/v0.5.1/fga_0.5.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2f6e79384bc80184a934203f2a80c1eda3e4874ad2b13ac71f14f78cdc1219d9"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    on_arm do
      url "https://github.com/openfga/cli/releases/download/v0.5.1/fga_0.5.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a0e56b653cdf4006746308645d440130ac9992e7580b029ec52b949b3dcdb369"

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
        url "https://github.com/openfga/cli/releases/download/v0.5.1/fga_0.5.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "843a1c2fcbdbc9bbbdc4d93ca581bec356dac616c3151ea5c42dd7160024c766"

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
        url "https://github.com/openfga/cli/releases/download/v0.5.1/fga_0.5.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "fc95b1c75cc111e71b223073e8845cfe05e6ead2068c2a2709a3dfd277a400cd"

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

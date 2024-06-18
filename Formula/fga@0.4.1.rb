# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FgaAT041 < Formula
  desc "A cross-platform CLI to interact with an OpenFGA server."
  homepage "https://openfga.dev/"
  version "0.4.1"
  license "Apache-2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/openfga/cli/releases/download/v0.4.1/fga_0.4.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f837e97d034eb93eaf9e20b226d2c20e67aa4180a2ab6292c2cbc1e3af09b184"

      def install
        bin.install "fga"
        bash_completion.install "completions/fga.bash" => "fga"
        zsh_completion.install "completions/fga.zsh" => "_fga"
        fish_completion.install "completions/fga.fish"
        man1.install "manpages/fga.1.gz"
      end
    end
    on_arm do
      url "https://github.com/openfga/cli/releases/download/v0.4.1/fga_0.4.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "43e7ad818ab5d745d00a14af754f44991250306c75c9165afc942bf9fef0a4f8"

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
        url "https://github.com/openfga/cli/releases/download/v0.4.1/fga_0.4.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "1fd429b8e75f9103e3775901bfb4bad2926aa9eb30ac155c8d40d67092e899d3"

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
        url "https://github.com/openfga/cli/releases/download/v0.4.1/fga_0.4.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "df72a656f7af57c00c1b1c4dd26852e212aded26324c42fe520e43d70a6c1d42"

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
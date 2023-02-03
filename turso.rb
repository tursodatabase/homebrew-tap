# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.32.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.1/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "b1ed568e67cfe71ad99a9ee631d36b4d81ebd2daae88ac8df7c741e14834ec7c"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.1/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "564d1b1c328ad0b127da63fb6f546c5d31c6643fd063470e5d37f66a1a7c9305"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.1/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "10b9a6bcdb485b67f3978664d959037c4dd4a51b8e9b66d7741c49641d93f777"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.1/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "3986e9da0c0538c0ced3376e0c4fb8f79bacc68daf0c4b10d498cdd106ba3999"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end
end

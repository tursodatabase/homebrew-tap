# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.32.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "a87b02220b695cacd95384fcf739e0e4f03876c3e7d36c60e7a811ca7e5848a2"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "3be21b07699b69802f0919b2cf239c7e468fe2d173e86aee7067b58a2a95c919"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "0025ac9dfd85a53565b7bcc92e19bb1f6b5bab737d7e98d7b2401cd43cbe1746"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.32.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "6b453902c44aad4cd23bee7f14345fbc2b732485af76f68e5b26868862915718"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end
end

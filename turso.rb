# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.91.0"

  depends_on "libsql/sqld/libsql-server"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "d8068393660329d05ba32b825f0d7d5ddf6f48b50a8ab70f8da1758d241b44d6"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "73cb2be050ef2ecfc6f5ce46438da3d6f67340d8c21f3075ff9f6fc15fdb56e5"

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
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "fb71001c57d9340d838c55c20e93dbe5c3751fe7b75c29ea57b2bf40ce52fca7"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "1d1a0b9e465f1f215ea128511126c7fc8a6eaf90605a1e53422b7ef89c58cebe"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso post-install')
  end
end

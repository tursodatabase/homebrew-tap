# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "1.0.4"

  depends_on "libsql/sqld/sqld"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v1.0.4/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "7274636a041fae5accea5bf7df0d5b23f0f2b3417b22a2648ccbab08466f17f4"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v1.0.4/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "224fd7bd7b0b8f971b1801b325171f5e7773b373d235a5eb97072be91710af72"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tursodatabase/homebrew-tap/releases/download/v1.0.4/homebrew-tap_Linux_x86_64.tar.gz"
        sha256 "e52775dd602e71abdc7da74af77cfd32e9901133d55f9797c367a91396e7c190"

        def install
          bin.install "turso"
          bash_completion.install "completions/turso.bash" => "turso"
          zsh_completion.install "completions/turso.zsh" => "_turso"
          fish_completion.install "completions/turso.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tursodatabase/homebrew-tap/releases/download/v1.0.4/homebrew-tap_Linux_arm64.tar.gz"
        sha256 "8d1219ae10948517a821b79485b13776f676b7a6c013037121878ed984ff6175"

        def install
          bin.install "turso"
          bash_completion.install "completions/turso.bash" => "turso"
          zsh_completion.install "completions/turso.zsh" => "_turso"
          fish_completion.install "completions/turso.fish"
        end
      end
    end
  end

  def post_install
    exec('turso post-install')
  end
end

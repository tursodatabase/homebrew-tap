# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.96.3"

  depends_on "libsql/sqld/sqld"

  on_macos do
    on_intel do
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "49f59ece9d224ba130d543d253a839b37467c7f585bc444cf507489da95269cf"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    on_arm do
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "4c29131487bcf164c0441b6d74e767a2c6d5e01aaf93b6338922db61c2ff4556"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Linux_x86_64.tar.gz"
        sha256 "296911afb624e4597d154a2a85a2ea21945216f45230e8610b83c81e25319a1c"

        def install
          bin.install "turso"
          bash_completion.install "completions/turso.bash" => "turso"
          zsh_completion.install "completions/turso.zsh" => "_turso"
          fish_completion.install "completions/turso.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Linux_arm64.tar.gz"
        sha256 "c623be369f5e06237c1e7846cc4210d6ebd698674335807bfbc1ce4c79f18d34"

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

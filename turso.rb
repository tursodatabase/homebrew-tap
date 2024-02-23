# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.88.8"

  depends_on "libsql/sqld/libsql-server"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.8/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "e114c0c1a859f8814d9117d4010ff9f444cba15acdefcdb304adf1261f21f529"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.8/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "7a5af9dd282971b23094bdeb5caf0ca568f8a2a389897d3d714586b911b3629c"

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
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.8/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "970ac29950f51e544b728929f3e5aa97c78ae0e415fd8cff55bf5e24b2b39a9d"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.8/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "d31d0df5216250095688ff4386735b2e35530441323875196b357ef313675d1f"

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

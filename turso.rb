# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.88.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.2/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "ffcc1c7598c411d71ac0f3e0ff5eab5685cce56916451490643f1c30eeb1bcc4"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.2/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "f0e45c64ce1276c4c7c4f64786e30d81522e517e80d664d4c54685ba02c96ee0"

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
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.2/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "36dbe2d3563f559d79e8c49e994b7056abfa6af61a4db1b01e2d98904a8ec2da"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.88.2/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "1707f5879e88ad3aa9d91af8bb7861fedfd595a43c1d8611468568936dcb4a61"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso quickstart')
  end
end

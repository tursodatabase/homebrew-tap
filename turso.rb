# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.98.2"

  depends_on "libsql/sqld/sqld"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.98.2/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "010575a276e8303498bedd79ea917be30068f3b069e8f249d88bd118ca8eca7e"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.98.2/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "1206b3180c931ef367f05c5b6c18fe388528cb3e587d9dd30a00c56d08188fb2"

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
        url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.98.2/homebrew-tap_Linux_x86_64.tar.gz"
        sha256 "b7762ce95f346a808faeaf398c464717a0900f5fc6ca16d509db878820f6e3ba"

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
        url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.98.2/homebrew-tap_Linux_arm64.tar.gz"
        sha256 "8c0d07292867a3760c983ad8fb0f531406514d5602779cc8ae1f69cbada911be"

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

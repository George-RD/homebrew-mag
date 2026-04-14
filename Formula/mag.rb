# typed: false
# frozen_string_literal: true

# ============================================================================
# MAG Homebrew Formula
# ============================================================================
#
# To set up the tap and install:
#
#   brew tap George-RD/mag https://github.com/George-RD/mag
#   brew install George-RD/mag/mag
#
# Or in one step:
#
#   brew install George-RD/mag/mag
#
# To update:
#
#   brew update && brew upgrade mag
#
# Release maintainers: update VERSION and all sha256 values below for each
# release.  The checksums are published in checksums.txt alongside the
# release assets.
# ============================================================================

class Mag < Formula
  desc "MAG — Local MCP memory server with ONNX embeddings and semantic search"
  homepage "https://github.com/George-RD/mag"
  license "MIT"

  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-apple-darwin.tar.gz"
      sha256 "d2d8fcd233888d19923f68765df7844588a045d890d1f8c2ab021348f6d3c55f" # Update per release from checksums.txt
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa621389aeead4a1c88aa0b1f03896ff43c7b023bf872387061461578bbde04b" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3691bc376d29893ceffee8c313966a89b12b476de73332c749074ef0c58a1470" # Update per release from checksums.txt
    end
  end

  def install
    bin.install "mag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mag --version")
  end
end

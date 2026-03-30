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

  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-apple-darwin.tar.gz"
      sha256 "213e46723c180d2bd11230d1c8dee80a6da6107d2b4d8eb6ccc6fe5810f835af" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-apple-darwin.tar.gz"
      sha256 "" # Update per release from checksums.txt
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7395f357444d8bcdb4d71e97a2bdebb22e399dfa5956df30cc7ea956c226d038" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9ac159e24227c12705ad8663a85f8d46793d905b0ad9af8df855bbfef53fc6b" # Update per release from checksums.txt
    end
  end

  def install
    bin.install "mag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mag --version")
  end
end

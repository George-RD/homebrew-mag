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

  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-apple-darwin.tar.gz"
      sha256 "c10ef39bb190d983fa730f9bfe6350291847d3e0d7b19b7f43484c1c1e9756b2" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-apple-darwin.tar.gz"
      sha256 "" # Update per release from checksums.txt
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5684278d1c6ee65e5ea9c6b5dae13bade8bf46860bcf4a3e8ef6ab22436bebe4" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "496b090a6bd1f99c7dd77fae6f851eba52f8b56baeb191d6fed190c5fecd3244" # Update per release from checksums.txt
    end
  end

  def install
    bin.install "mag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mag --version")
  end
end

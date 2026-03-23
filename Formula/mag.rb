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

  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-apple-darwin.tar.gz"
      sha256 "7bf3547fdecb25e8a25f88ea48e33cb5050ed18327343f480a2f8459f9430a4a" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-apple-darwin.tar.gz"
      sha256 "" # Update per release from checksums.txt
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ede75ac928b0302b6589e95577948ae61bcbf72e2031e1ba93215651df28077e" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f15ff39db9d8d92e2eeda6afb675b1b5da3c90863129c442f2176ade642bcb5c" # Update per release from checksums.txt
    end
  end

  def install
    bin.install "mag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mag --version")
  end
end

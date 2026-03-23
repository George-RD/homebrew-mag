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

  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-apple-darwin.tar.gz"
      sha256 "0ad22c47e47c034c4670c4d62a7ed8cf96ad21087867c0ceb55804f8edf1a18d" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-apple-darwin.tar.gz"
      sha256 "" # Update per release from checksums.txt
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b219f87992c52c6c615192cf487336ba8b48c48266308aefe7d551096681ad2b" # Update per release from checksums.txt
    end

    on_intel do
      url "https://github.com/George-RD/mag/releases/download/v#{version}/mag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4040257fbd9488a68ca5345f8ea8906b7854fb49d8566b057c10dccd43c2f7f" # Update per release from checksums.txt
    end
  end

  def install
    bin.install "mag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mag --version")
  end
end

class Codecat < Formula
  desc "CLI tool to clone and concatenate code repositories for AI analysis"
  homepage "https://github.com/unclecode/ccat4ai"
  url "https://github.com/unclecode/ccat4ai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9c42c0f98a4ee2e8b9cd9e699963259f13a79dc586037ce9315b390b0aab020c"
  license "MIT"

  depends_on "git"
  depends_on "tree"
  depends_on "grep"
  depends_on "file"

  def install
    bin.install "ccat.sh" => "codecat"
    # Create symlinks for alternative names
    bin.install_symlink "codecat" => "ccat4ai"
    bin.install_symlink "codecat" => "ccat"
  end

  test do
    system "#{bin}/codecat", "--version"
  end
end
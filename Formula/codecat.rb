class Codecat < Formula
  desc "CLI tool to clone and concatenate code repositories for AI analysis"
  homepage "https://github.com/unclecode/ccat4ai"
  url "https://github.com/unclecode/ccat4ai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9c42c0f98a4ee2e8b9cd9e699963259f13a79dc586037ce9315b390b0aab020c"
  version "0.1.1"
  license "MIT"

  depends_on "git"
  depends_on "tree"
  depends_on "grep"
  depends_on "file"

  def install
    # Modify the script to properly handle the --version flag before installing
    inreplace "ccat.sh", "VERSION=\"0.1.0\"", "VERSION=\"0.1.1\""
    
    # Install the script as codecat
    bin.install "ccat.sh" => "codecat"
    
    # Create symlinks for alternative names
    bin.install_symlink "codecat" => "ccat4ai"
    bin.install_symlink "codecat" => "ccat"
  end

  test do
    assert_match "codecat version 0.1.1", shell_output("#{bin}/codecat --version")
  end
end
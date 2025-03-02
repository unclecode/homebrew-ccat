class Ccat4ai < Formula
  desc "CLI tool to clone and concatenate code repositories for AI analysis"
  homepage "https://github.com/unclecode/ccat4ai"
  url "https://github.com/unclecode/ccat4ai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9c42c0f98a4ee2e8b9cd9e699963259f13a79dc586037ce9315b390b0aab020c"
  license "MIT"
  
  # Use the ccat4ai tap name
  tap "unclecode/ccat4ai"

  depends_on "git"
  depends_on "tree"
  depends_on "grep"
  depends_on "file"

  def install
    # Install the script as ccat4ai
    bin.install "ccat.sh" => "ccat4ai"
    
    # Show users how to create a symlink if they want
    ohai "If you want to use 'ccat' instead of 'ccat4ai', run this command:"
    ohai "  ln -sf $(which ccat4ai) /usr/local/bin/ccat"
  end

  test do
    # Basic test to check if the script is executable
    system "#{bin}/ccat4ai", "--help"
  end
end
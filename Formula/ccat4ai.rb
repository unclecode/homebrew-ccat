class Ccat4ai < Formula
  desc "CLI tool to clone and concatenate code repositories for AI analysis"
  homepage "https://github.com/unclecode/ccat4ai"
  url "https://github.com/unclecode/ccat4ai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "679adec6d49af664e46549dce53cdfc15cd2de99342faceb06615aa39ff33d99"
  license "MIT"
  
  # Formula for ccat4ai

  depends_on "git"
  depends_on "tree"
  depends_on "grep"
  depends_on "file"

  def install
    # Install the script as ccat4ai
    bin.install "ccat.sh" => "ccat4ai"
    
    # Show users how to create a symlink if they want
    ohai "If you want to use 'ccat' instead of 'ccat4ai', run these commands:"
    ohai "  mkdir -p ~/bin"
    ohai "  ln -sf $(which ccat4ai) ~/bin/ccat"
    ohai "  echo 'export PATH=\"$HOME/bin:$PATH\"' >> ~/.zshrc # or ~/.bashrc"
    ohai "  # Restart your terminal or run: source ~/.zshrc"
  end

  test do
    # Basic test to check if the script is executable
    system "#{bin}/ccat4ai", "--help"
  end
end
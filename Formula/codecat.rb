class Codecat < Formula
  desc "CLI tool to clone and concatenate code repositories for AI analysis"
  homepage "https://github.com/unclecode/ccat4ai"
  url "https://github.com/unclecode/ccat4ai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9e796975808b363321f4ac972ce53c5ffaf41289219b4b4e47ef1cb8915e452f"
  license "MIT"

  depends_on "git"
  depends_on "tree"
  depends_on "grep"
  depends_on "file"

  def install
    bin.install "ccat.sh" => "codecat"
    # Create a symlink so users can use either 'codecat' or 'ccat4ai'
    bin.install_symlink "codecat" => "ccat4ai"
  end

  test do
    system "#{bin}/codecat", "--version"
  end
end
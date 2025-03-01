class Catcode < Formula
  desc "CLI tool to clone and concatenate code repositories for AI analysis"
  homepage "https://github.com/unclecode/ccat4ai"
  url "https://github.com/unclecode/ccat4ai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9c42c0f98a4ee2e8b9cd9e699963259f13a79dc586037ce9315b390b0aab020c"
  license "MIT"
  
  # Rename the tap repo to reflect the new name
  tap "unclecode/ccode"

  depends_on "git"
  depends_on "tree"
  depends_on "grep"
  depends_on "file"

  def install
    # Install the script as catcode
    bin.install "ccat.sh" => "catcode"
    
    # Create symlink for shorter name
    bin.install_symlink "catcode" => "ccode"
  end

  test do
    # Basic test to check if the script is executable
    system "#{bin}/catcode", "--help"
  end
end
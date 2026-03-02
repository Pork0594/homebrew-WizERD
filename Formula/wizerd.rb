class Wizerd < Formula
  desc "PostgreSQL ER diagram generator with zero-overlap layouts"
  homepage "https://github.com/Pork0594/WizERD"
  url "https://files.pythonhosted.org/packages/source/w/wizerd/wizerd-0.3.1.tar.gz"
  sha256 "d92fa8bb3f61f99dc3f00f5af452ae4ce0b6dbebf72625ce1c0d82870c40de0c"
  license "MIT"
  version "0.3.1"

  depends_on "node"

  def install
    system "pip", "install", "--prefix=#{prefix}", "."
  end

  test do
    assert_match "wizerd #{version}", shell_output("wizerd --version")
  end
end

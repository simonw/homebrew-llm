class Symbex < Formula
  include Language::Python::Virtualenv

  desc "Find the Python code for specified symbols"
  homepage "https://github.com/simonw/symbex"
  url "https://files.pythonhosted.org/packages/44/4c/640ffc740fde44e0ffb1ae40000676b5b0ca2c35003a10b4229c979eb7ff/symbex-1.3.tar.gz"
  sha256 "795a2992086ec36c652c79f2261c7a8fcf6b91d1f17d3fa7674387a9a4166e3b"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "symbex, version", shell_output("#{bin}/symbex --version")
  end
end

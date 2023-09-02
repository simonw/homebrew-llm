class Symbex < Formula
  include Language::Python::Virtualenv

  desc "Find the Python code for specified symbols"
  homepage "https://github.com/simonw/symbex"
  url "https://files.pythonhosted.org/packages/5c/18/69818467e5cde017d12febe251c0519a71f2cbca3c9957eb5c5e8f76e572/symbex-1.3.1.tar.gz"
  sha256 "ce825d10d5c20d039322aaa66253e2992b61d3df69818b6f38a07095a7073225"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "symbex, version", shell_output("#{bin}/symbex --version")
  end
end

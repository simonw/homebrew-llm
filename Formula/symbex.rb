class Symbex < Formula
  include Language::Python::Virtualenv

  desc "Find the Python code for specified symbols"
  homepage "https://github.com/simonw/symbex"
  url "https://files.pythonhosted.org/packages/f3/40/390ce5881d488d104d7ee10ec2414d93d70c9477f70f7e7b31819bf804db/symbex-1.4.tar.gz"
  sha256 "f786d5d1d9ef0e5b0856ebf54cc12f7c42a63ea073e274f88b6024cf50490164"

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

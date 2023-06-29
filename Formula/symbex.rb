class Symbex < Formula
  include Language::Python::Virtualenv

  desc "Find the Python code for specified symbols"
  homepage "https://github.com/simonw/symbex"
  url "https://files.pythonhosted.org/packages/87/97/27e5cfb680f749fa6b7a8a7db16517d2bd3ca4b933250b3c004b45b77668/symbex-1.0.tar.gz"
  sha256 "579564cfdf077935c924daead5b06af85f358c7250fb5b7dbc61685a296264a9"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "symbex, version", shell_output("#{bin}/symbex --version")
  end
end

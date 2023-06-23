class Symbex < Formula
  include Language::Python::Virtualenv

  desc "Find the Python code for specified symbols"
  homepage "https://github.com/simonw/symbex"
  url "https://files.pythonhosted.org/packages/bb/5f/c2798f2315d73932988537c4ab35837a84c43c795a38005ffee261fa33c1/symbex-0.7.tar.gz"
  sha256 "9595cf0f60d41705ba9951f3e2c68af07f55f9292e43e47cba9929d270cc6e93"

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

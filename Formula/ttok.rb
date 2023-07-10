class Ttok < Formula
  include Language::Python::Virtualenv

  desc "Count and truncate text based on tokens"
  homepage "https://github.com/simonw/ttok"
  url "https://files.pythonhosted.org/packages/a1/9e/1f5960f74227414b1c421a22e86ec3e35ae1c4f2a4d0f8ae4770384c7271/ttok-0.2.tar.gz"
  sha256 "b5ec7b39358194bbd2cae50fc589e5f80ac3bb173ae39a7ea4d523e2c0a2d745"

  depends_on "python3"
  # To build tiktoken:
  depends_on "pkg-config" => :build
  depends_on "rust" => :build


  resource "certifi" do
    url "https://files.pythonhosted.org/packages/93/71/752f7a4dd4c20d6b12341ed1732368546bc0ca9866139fe812f6009d9ac7/certifi-2023.5.7.tar.gz"
    sha256 "0f0d56dc5a6ad56fd4ba36484d6cc34451e1c6548c61daad8c320169f91eddc7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/77/88/b0cc5fe95c31c301e9823ea9b028f669c0dcfa205ff71111037a5ed4892c/click-8.1.4.tar.gz"
    sha256 "b97d0c74955da062a7d4ef92fadb583806a585b2ea81958a81bd72726cbb8e37"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/18/df/401fd39ffd50062ff1e0344f95f8e2c141de4fd1eca1677d2f29609e5389/regex-2023.6.3.tar.gz"
    sha256 "72d1a25bf36d2050ceb35b517afe13864865268dfb45910e2e17a84be6cbfeb0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/9f/88/77a86f915a81449156375b7538c94105a34bebf00838462c9d3fced490e9/tiktoken-0.4.0.tar.gz"
    sha256 "59b20a819969735b48161ced9b92f05dc4519c17be4015cfb73b65270a243620"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/d6/af/3b4cfedd46b3addab52e84a71ab26518272c23c77116de3c61ead54af903/urllib3-2.0.3.tar.gz"
    sha256 "bee28b5e56addb8226c96f7f13ac28cb4c301dd5ea8a6ca179c0b9835e032825"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "ttok, version", shell_output("#{bin}/ttok --version")
  end
end

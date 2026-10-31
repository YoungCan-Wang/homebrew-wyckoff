class Wyckoff < Formula
  include Language::Python::Virtualenv

  desc "Wyckoff method quantitative analysis agent for A-shares"
  homepage "https://github.com/YoungCan-Wang/Wyckoff-Analysis"
  url "https://files.pythonhosted.org/packages/source/y/youngcan-wyckoff-analysis/youngcan_wyckoff_analysis-0.9.479.tar.gz"
  sha256 "bccb41b35f944831aa4d938dcc45755c61e639927cfb57e2d95ee5aaf59bfb3e"
  license "AGPL-3.0-only"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyckoff --version")
  end
end

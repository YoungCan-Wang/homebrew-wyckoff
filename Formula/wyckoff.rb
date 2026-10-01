class Wyckoff < Formula
  include Language::Python::Virtualenv

  desc "Wyckoff method quantitative analysis agent for A-shares"
  homepage "https://github.com/YoungCan-Wang/Wyckoff-Analysis"
  url "https://files.pythonhosted.org/packages/source/y/youngcan-wyckoff-analysis/youngcan_wyckoff_analysis-0.9.434.tar.gz"
  sha256 "e588843b03db49078ecfaa3264ca0572834b4f6acfbc5c4ab1d5c7d1498e6304"
  license "AGPL-3.0-only"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyckoff --version")
  end
end

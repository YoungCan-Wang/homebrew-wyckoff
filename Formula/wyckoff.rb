class Wyckoff < Formula
  include Language::Python::Virtualenv

  desc "Wyckoff method quantitative analysis agent for A-shares"
  homepage "https://github.com/YoungCan-Wang/Wyckoff-Analysis"
  url "https://files.pythonhosted.org/packages/source/y/youngcan-wyckoff-analysis/youngcan_wyckoff_analysis-0.9.225.tar.gz"
  sha256 "ea3f69ea0d6c2379bd1c5db15c30f348954114cad407c44520192f78a2353524"
  license "AGPL-3.0-only"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyckoff --version")
  end
end

class Wyckoff < Formula
  include Language::Python::Virtualenv

  desc "Wyckoff method quantitative analysis agent for A-shares"
  homepage "https://github.com/YoungCan-Wang/Wyckoff-Analysis"
  url "https://files.pythonhosted.org/packages/source/y/youngcan-wyckoff-analysis/youngcan_wyckoff_analysis-0.9.354.tar.gz"
  sha256 "0b24fd2127737034394e7dcd45ec63c07e76ba912c76c5b0611fb92319fc22bb"
  license "AGPL-3.0-only"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyckoff --version")
  end
end

# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Mplus Code Latin is a Sans Serif font"
HOMEPAGE="https://github.com/coz-m/MPLUS_FONTS"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86"

EGIT_REPO_URI="https://github.com/coz-m/MPLUS_FONTS.git"
EGIT_COMMIT="c22b6fc3b5bc62134638683dd1e911512d3b87c3"

src_unpack() {
	git-r3_src_fetch
	git-r3_checkout
}

src_install() {
	insinto "/usr/share/fonts/${PN}"
	doins "${S}/fonts/otf"/MplusCodeLatin50-*.otf
	doins "${S}/fonts/otf"/MplusCodeLatin60-*.otf
}



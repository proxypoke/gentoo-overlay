# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit multilib

DESCRIPTION="shell-based launcher"
HOMEPAGE="https://github.com/Merovius/shellex"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	x11-terms/rxvt-unicode
	app-shells/zsh
	x11-apps/xrandr
	dev-perl/X11-Protocol"

src_compile() {
	emake LIBDIR="$(get_libdir)"
}

src_install() {
	emake DESTDIR="${D}" LIBDIR="$(get_libdir)" install
	dodoc README.md
}

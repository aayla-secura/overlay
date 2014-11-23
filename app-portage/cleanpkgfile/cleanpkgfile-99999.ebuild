# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="Checks and cleans your package.* files"
HOMEPAGE="https://github.com/aayla-secura/cleanpkgfile"
EGIT_REPO_URI="https://github.com/aayla-secura/cleanpkgfile.git"

KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"
IUSE="zsh-completion"

RDEPEND=">=dev-lang/perl-5.6.1
	dev-perl/File-Find-Rule
	zsh-completion? (
		app-shells/zsh
		=app-shells/gentoo-zsh-completions-99999999
	)
"

src_install() {
	dosbin cleanpkgfile
	dodoc README cleanpkgfile.conf.example
	if use zsh-completion ; then
	   insinto /usr/share/zsh/site-functions
	   doins _cleanpkgfile
	fi
}
# Fantasque Sans Mono Arch Linux Build

**To note: These are the instructions for the Fantasque Sans Mono Large Line
Height No Loop K version**

This repository contains the _PKGBUILD_ needed to package the [Fantasque Sans
Mono font][1] with the Large Line Height No Loop K variant.

Personally I both use accented characters, for which the Large Line Height
version seems better, and I prefer the No Loop K stylistic set. However, it
seems all the currently written packages for Arch Linux, both the community, and
an AUR one, only target the normal release.

This is a rewrite from the [community package][2]. When installed, it seems it
will still display the font name as simply `Fantasque Sans Mono`. However, I
might look into actually building the fonts and changing that at some point.

If I do that, I might also look at how to upload it to AUR, since right now I
don't want to deal with all the bureaucracy for something that _mostly_ works,
and that I'll most likely only use myself.

## Build instructions

It will generate two packages, both the OTF and TTF versions, you can choose
whatever one you wish.

```
git clone https://github.com/Sighery/fantasque-sans-arch-build.git
cd fantasque-sans-arch-build
makepkg
```

From there two `*.pkg.tar.xz` packages will have been created. One for OTF and
one for TTF. You can install your prefered one with `pacman -U package-file`.

---

### Tidying up

In case you don't like keeping the build files around, you can do
`git clean -fdX` to remove all ignored things, which will be all but the ones
you see in this repository. `-n` for a dry-run. More info with `git clean -h`.

[1]: https://github.com/belluzj/fantasque-sans
[2]: https://www.archlinux.org/packages/community/any/fantasque-sans-mono/

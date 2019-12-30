FROM sighery/archbuilder:latest

COPY --chown=builder PKGBUILD fantasque/PKGBUILD
WORKDIR fantasque
RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]

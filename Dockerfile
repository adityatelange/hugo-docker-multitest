FROM bitnami/minideb:bookworm

RUN ["install_packages", "wget", "ca-certificates"]
COPY "run.sh" .
RUN ["chmod", "+x", "./run.sh"]
ENTRYPOINT [ "./run.sh" ]

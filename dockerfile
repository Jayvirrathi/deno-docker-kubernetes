FROM jayvirrathi/deno:1.6.1-buster-slim as build

COPY ./src/ $DENO_DIR

ENTRYPOINT ["deno"]
CMD ["run", "--allow-net", "/deno-dir/server.js"]
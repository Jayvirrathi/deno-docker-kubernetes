FROM jayvirrathi/deno:1.5.2-buster-slim as build

COPY ./src/ $DENO_DIR

RUN mkdir /out/
RUN deno bundle /deno-dir/server.js /out/server.js

FROM jayvirrathi/deno:1.5.2-buster-slim as final 

COPY --from=build /out/server.js /deno-dir/server.js

ENTRYPOINT ["deno"]
CMD ["run", "--allow-net", "/deno-dir/server.js"]
FROM arm64v8/rust:1.31

WORKDIR /src

RUN cargo install cargo-watch
CMD ["cargo", "watch", "-x", "run", "-w", "src"]
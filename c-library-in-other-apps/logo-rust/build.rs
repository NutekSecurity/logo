extern crate cc;

fn main() {
    cc::Build::new()
        .file("../logo/logo-lib.c")
        .compile("liblogo.dylib");
}
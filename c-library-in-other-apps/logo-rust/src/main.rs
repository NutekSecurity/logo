extern crate libc;
use libc::c_char;
use std::ffi::CStr;

#[link(name = "liblogo.dylib")]//, kind = "dylib")]
extern "C" {
    fn logo_black() -> *const c_char;
    fn logo() -> *const c_char;
}

fn main() {
    unsafe {
        let result = logo_black();
        let c_str = CStr::from_ptr(result);
        let str_slice = c_str.to_str().unwrap();
        let str_buf = str_slice.to_owned();  // if you want to convert it to a String
        println!("{}", str_buf);
        let result = logo();
        let c_str = CStr::from_ptr(result);
        let str_slice = c_str.to_str().unwrap();
        let str_buf = str_slice.to_owned();  // if you want to convert it to a String
        println!("{}", str_buf);
    }
}
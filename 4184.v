import os { input }

// ! V does not allow mutable parameters !
// FIX: Return the result instead for now
// Also V doesn't like CamelCase functions...
fn f_nume(s string) (string, []rune)
{
    mut id := []rune{len: s.len + 4, init: 0}
    mut ok := false
    mut c := 0
    for i := 0; i < s.len; i++ {
        if ok == true {
            id[c] = s[i]
            c++
        }
        // 32 is the ASCI for space
        if s[i] == u8(32) {
            ok = true
        }
    }
    // 50 is the ASCII for 2
    id[c] = u8(50)
    c++
    // 48 is the ASCII for 0
    id[c] = u8(48)
    c++
    // 50 is the ASCII for 2
    id[c] = u8(50)
    c++
    // 50 is the ASCII for 2
    id[c] = u8(50)
    c++
    // 0 is the ASCII for \0
    id[c] = u8(0)
    c++
    return s, id
}

fn main()
{
    mut s := input("s = ")
    _, id := f_nume(s)
    for i in id {
        print("$i")
    }
}
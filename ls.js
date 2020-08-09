function ls(a, b) {
    if (b != null) {
        localStorage.setItem(a, b);
        return b;
    } else {
        if (localStorage.getItem(a) != null) {
            return localStorage.getItem(a);
        }
        return "";
    }
}

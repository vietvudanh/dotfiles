return {
    s("date", f(function(_, snip)
        return os.date('%Y-%m-%d')
    end, {})),
    s("datetime", f(function(_, snip)
        return os.date('%Y-%m-%d %H:%M:%S')
    end, {})),
    parse("todo", "- [ ]"),
}

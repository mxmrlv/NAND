import re

symbols = ['{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '-', '*', '/', '&', '|', '<', '>', '=', '~']


def __is_int(s):
    try:
        int(s)
        return True
    except ValueError:
        return False


def __is_keyword(s):
    return s in ['class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean',
                 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return']


def __is_string(s):
    return len(s) > 2 and s[0] == '"' and s[-1] == '"'


def __is_symbol(s):
    return s in symbols


def __is_identifier(s):
    return re.search('\W*', s).group(0) is not None


def __clear_comments(s):
    is_string = False
    is_slash_comment = False
    is_star_comment = False
    out_string = ""
    for i, c in enumerate(s):
        if s[i] == '"':
            is_string = not is_string

        if not is_string:
            # Slash comment type
            if s[i:i+2] == '//':
                is_slash_comment = True

            # Star comment type
            elif s[i:i+2] == '/*':
                is_star_comment = True

        if not is_slash_comment and not is_star_comment:
            out_string += c

        if not is_string:
            # Closing slash comment
            if s[i-2:i] == '*/' and is_star_comment:
                is_star_comment = False

            # Closing one line comment
            elif c == '\n' and is_slash_comment:
                is_slash_comment = False

    return out_string


def tokenize(str_input):
    str_output = "<tokens>" + "\n"
    pat = '(".*"|[^a-zA-Z0-9_]|{})'.format(['\{}'.format(k)] for k in symbols)

    for t in [k.strip() for k in re.split(pat, __clear_comments(str_input)) if k.strip() != ""]:
        str_output += __get_token(t) + "\n"

    str_output += "</tokens>" + "\n"
    return str_output


def __get_token(t):
    s = "<{0}> {1} </{0}>"
    if __is_keyword(t):
        return s.format("keyword", t)
    elif __is_symbol(t):
        if t in ['>', '<', '""', "&"]:
            return s.format("symbol", {
                '>': "&gt;",
                '<': "&lt;",
                '""': "&quot;",
                '&': "&amp;"
            }[t])
        else:
            return s.format("symbol", t)
    elif __is_int(t):
        return s.format("integerConstant", t)
    elif __is_string(t):
        return s.format("stringConstant", t[1:-1])
    elif __is_identifier(t):
        return s.format("identifier", t)

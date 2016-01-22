from itertools import groupby


def encode(source):
    result = ""
    grouped = groupby(source)
    for k, g in grouped:
        groupSize = len(list(g))
        if groupSize > 1:
            result += str(groupSize) + k
        else:
            result += k
    return result


def decode(source):
    number = 1
    decoded_string = ""
    grouped = groupby(source, str.isdigit)
    for is_digit_group, group in grouped:
        group = list(group)
        group.reverse()

        if is_digit_group:
            number = digit_group_to_number(group)
        else:
            char = group.pop()
            decoded_string += char * number
            while len(group) > 0:
                decoded_string += group.pop()
    return decoded_string


def digit_group_to_number(group):
    _10Exp = 1
    number = 0
    for digit in group:
        number += int(digit) * _10Exp
        _10Exp *= 10
    return number

import ast
import os


def add_noqa_to_long_strings(directory, max_length=120):
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".py"):
                file_path = os.path.join(root, file)
                process_file(file_path, max_length)


def process_file(file_path, max_length):
    with open(file_path, "r") as f:
        lines = f.readlines()

    modified = False
    with open(file_path, "w") as f:
        for line in lines:
            if (is_string_or_fstring(line) and len(line) > max_length) and "# noqa" not in line:
                line = line.rstrip() + "  # noqa: E501\n"
                modified = True
            f.write(line)

    if modified:
        print(f"Updated: {file_path}")


def is_string_or_fstring(line):
    try:
        parsed = ast.parse(line.strip())
        for node in ast.walk(parsed):
            if isinstance(node, (ast.Str, ast.JoinedStr)):
                return True
    except SyntaxError:
        pass
    return False


directory_path = r"C:\Users\omkar\fastapi-backend\apis"
add_noqa_to_long_strings(directory_path)

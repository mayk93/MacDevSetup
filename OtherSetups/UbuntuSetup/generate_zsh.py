import sys
from optparse import OptionParser


def change_file(user_path):
    with open("./.zshrc", "r") as zsh_file:
        initial_content = zsh_file.read()

    new_content = initial_content.replace("USER_PATH", user_path)

    with open("./.zshrc", "w") as zsh_file:
        zsh_file.write(new_content)

# Open the pre existing draft and replace USER_PATH with the current user PATH
if __name__ == "__main__":
    parser = OptionParser()
    parser.add_option(
        "-u",
        "--user",
        action="store",
        type="string",
        default=None
    )

    (options, args) = parser.parse_args()
    user_path = options.user

    if not user_path:
        print "No user given. Now existing."
        sys.exit(1)

    change_file(user_path)

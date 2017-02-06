import sys
import json
from optparse import OptionParser


def change_file(user_path):
    with open("PostBrewSetup/terminal_settings.json", "r") as terminal_settings:
        initial_settings = json.loads(terminal_settings.read())

    new_settings = initial_settings
    new_settings["Working Directory"] = user_path

    with open("PostBrewSetup/terminal_settings.json", "w") as terminal_settings:
        terminal_settings.write(json.dumps(new_settings))

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

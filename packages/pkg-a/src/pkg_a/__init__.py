import cowsay
from lib import foo


def main():
    print(cowsay.get_output_string("cow", foo()))

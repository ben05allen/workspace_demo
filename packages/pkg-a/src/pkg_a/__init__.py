import cowsay
from lib import foo


def main():
    print("In pkg-a")
    print(cowsay.get_output_string("cow", foo()))

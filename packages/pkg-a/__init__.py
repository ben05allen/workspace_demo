import cowsay
from B import foo


def main():
    cowsay.get_output_string("cow", foo())


if __name__ == "__main__":
    main()

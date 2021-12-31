import os
import sys
import itertools
import subprocess


# FUNCTIONS


def here(*args):
    return os.path.realpath(os.path.join(sys.path[0], *args))


def run(lines):
    for cmd in lines.split("\n"):
        os.system(cmd)


def win2wsl(fpath):
    return os.path.normpath(fpath).replace("\\", "/").replace("C:", "/mnt/c")


def compile_c(fpath_src):
    fpath_bin = fpath_src.replace("\\src\\", "\\bin\\").split(".")[0] + ".exe"
    return "gcc {} -o {}\n{}".format(fpath_src, fpath_bin, fpath_bin)


def compile_cpp(fpath_src):
    fpath_bin = fpath_src.replace("\\src\\", "\\bin\\").split(".")[0] + ".exe"
    return "g++ {} -o {}\n{}".format(fpath_src, fpath_bin, fpath_bin)


def compile_java(fpath_src):
    dpath = fpath_src.replace("\\src\\", "\\bin\\").split(".")[0]
    name = fpath_src.split("\\")[-1].replace(".java", "")
    tup = (fpath_src, dpath, dpath, name)
    return "javac {} -d {}\ncd {} & java {}".format(*tup)


def compile_pl(fpath_src):
    return "wsl perl {}".format(win2wsl(fpath_src))


def compile_sh(fpath_src):
    return "wsl bash {}".format(win2wsl(fpath_src))


# CONSTANTS


DCT_RUNNER = {
    "c": compile_c,
    "cpp": compile_cpp,
    "go": "go run {}".format,
    "java": compile_java,
    "jl": "julia {}".format,
    "js": "node {}".format,
    "pl": compile_pl,
    "py": "python {}".format,
    "r": "Rscript {}".format,
    "sh": compile_sh,
}


# SCRIPT


if __name__ == "__main__":
    if len(sys.argv) != 2:
        exit()

    problem = int(sys.argv[1])
    prefix = "pe_{:04d}".format(problem)

    dpath_src = here("../src")
    langs = os.listdir(dpath_src)

    for lang in langs:
        dpath_lang = here(dpath_src, lang)
        scripts = os.listdir(dpath_lang)
        for script in scripts:
            fpath_script = here(dpath_lang, script)
            if script.endswith("exe"):
                os.remove(fpath_script)
            elif script.startswith(prefix):
                print("\n> [{}] says...\n".format(lang))
                run(DCT_RUNNER[lang](fpath_script))
    print()

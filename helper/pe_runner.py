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


def cmd_c(fpath_src):
    fpath_bin = fpath_src.replace("\\src\\", "\\bin\\").split(".")[0] + ".exe"
    lines = "gcc {} -o {}\n{}".format(fpath_src, fpath_bin, fpath_bin)
    return lines


def cmd_cpp(fpath_src):
    fpath_bin = fpath_src.replace("\\src\\", "\\bin\\").split(".")[0] + ".exe"
    lines = "g++ {} -o {}\n{}".format(fpath_src, fpath_bin, fpath_bin)
    return lines


# CONSTANTS


DCT_RUNNER = {
    "c": cmd_c,
    "cpp": cmd_cpp,
    "jl": "julia {}".format,
    "py": "python {}".format,
    "r": "Rscript {}".format,
}


# SCRIPT


if __name__ == "__main__":
    problem = 1
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
                run(DCT_RUNNER[lang](fpath_script))

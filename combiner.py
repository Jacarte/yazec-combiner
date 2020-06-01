
import os
from subprocess import check_call as check
import uuid
import shutil
import sys
from concurrent.futures import ThreadPoolExecutor, wait, ALL_COMPLETED

WORKERS = 10
MAX = 5

pool = ThreadPoolExecutor(max_workers=WORKERS)

MODULES = ['blake2b', 'equihash', 'main', 'sha256']

check(["bash", "clean.sh"])

def compile(name, blake, equihash, main, sha256, out):
    sys.stderr.write(f"{name}, {blake}, {equihash}, {main}, {sha256}\n")

    tmp_folder = "tmp-%s"%uuid.uuid4().__str__()

    shutil.copytree("baseline", tmp_folder)

    shutil.copy(f"blake2b/{blake}", f"{tmp_folder}/blake2b.bc")   
    shutil.copy(f"equihash/{equihash}", f"{tmp_folder}/equihash.bc")
    shutil.copy(f"main/{main}", f"{tmp_folder}/main.bc")
    shutil.copy(f"sha256/{sha256}", f"{tmp_folder}/sha256.bc")




    # create temp folder
    check(["make"], cwd=tmp_folder)

    # copy the wasm
    shutil.copy("%s/jazecminer.wasm"%tmp_folder, f"{out}/{name}-jazecminer.wasm")
    shutil.rmtree(tmp_folder)


futures = []

COUNTER_BLAKE = 1
COUNTER_EQUI = 1
COUNTER = 1



for bl in os.listdir("blake2b")[:MAX]:
    job = pool.submit(compile,f"{COUNTER_BLAKE}-1", bl, "equihash.bc", "main.bc", "sha256.bc", "only-blake")
    COUNTER_BLAKE += 1
    futures.append(job)

wait(futures, return_when=ALL_COMPLETED)

for eq in os.listdir("equihash")[:MAX]:
    job = pool.submit(compile,f"{COUNTER_EQUI}-2", "blake2b.bc", eq, "main.bc", "sha256.bc", "only-equihash")
    COUNTER_EQUI += 1
    futures.append(job)
wait(futures, return_when=ALL_COMPLETED)

for bl in os.listdir("blake2b")[:MAX]:
    for eq in os.listdir("equihash")[:MAX]:
        for m in os.listdir("main"):
            for s in os.listdir("sha256"):
                job = pool.submit(compile,f"{COUNTER}", bl, eq, m, s, "out")
                futures.append(job)
                COUNTER += 1

wait(futures, return_when=ALL_COMPLETED)


import os
from subprocess import check_call as check
import uuid
import shutil
import sys
import json
from concurrent.futures import ThreadPoolExecutor, wait, ALL_COMPLETED

WORKERS = int(sys.argv[1])
MAX = 105000

pool = ThreadPoolExecutor(max_workers=WORKERS)

MODULES = ['blake2b', 'equihash', 'main', 'sha256']

check(["bash", "clean.sh"])

def compile(name, blake, equihash, main, sha256, out):
    tmp_folder = "tmp-%s"%uuid.uuid4().__str__()
    try:
        sys.stderr.write(f"{name}, {blake}, {equihash}, {main}, {sha256}\n")


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
    except Exception as e:
        print(f"Error {e} {name},{blake}, {equihash}, {sha256}")
    finally:
        try:
            shutil.rmtree(tmp_folder)
        except:
            pass


futures = []

COUNTER_BLAKE = 1
COUNTER_EQUI = 1
COUNTER = 1



'''for bl in os.listdir("blake2b")[:MAX]:
    job = pool.submit(compile,f"{COUNTER_BLAKE}-1", bl, "equihash.bc", "main.bc", "sha256.bc", "only-blake")
    COUNTER_BLAKE += 1
    futures.append(job)

wait(futures, return_when=ALL_COMPLETED)

for eq in os.listdir("equihash")[:MAX]:
    job = pool.submit(compile,f"{COUNTER_EQUI}-2", "blake2b.bc", eq, "main.bc", "sha256.bc", "only-equihash")
    COUNTER_EQUI += 1
    futures.append(job)
wait(futures, return_when=ALL_COMPLETED)'''

DICT = {}

if os.path.exists('progress.json'):
    DICT = json.loads(open("progress.json", 'r').read())

MX = max([int(k) for k in DICT.keys()] + [-1])

l1 = len([f for f in os.listdir("blake2b")[:MAX] if f.endswith(".bc") ])
l2 = len([f for f in os.listdir("equihash")[:MAX] if f.endswith(".bc") ])
l3 = len([f for f in os.listdir("main")[:MAX] if f.endswith(".bc") ])
l4 = len([f for f in os.listdir("sha256")[:MAX] if f.endswith(".bc") ])
print(l1*l2*l3*l4)

try:
    for bl in [f for f in os.listdir("blake2b")[:MAX] if f.endswith(".bc") ]:
        for eq in [f for f in os.listdir("equihash")[:MAX] if f.endswith(".bc") ]:
            for m in [f for f in os.listdir("main")[:MAX] if f.endswith(".bc") ]:
                for s in [f for f in os.listdir("sha256")[:MAX] if f.endswith(".bc") ]:
                    if COUNTER > MX:
                        DICT[COUNTER] = [bl, eq, m, s]
                        job = pool.submit(compile,f"{COUNTER}", bl, eq, m, s, "out")
                        futures.append(job)
                        COUNTER += 1
                        #breakl
                    else:
                        print("Already generated")
except KeyboardInterrupt:
    # save progress
    open("out/progress.json", 'w').write(json.dumps(DICT))


wait(futures, return_when=ALL_COMPLETED)


# compile("test","[4]blake2b[0_1_5_7].bc", "equihash.bc", "main.bc", "sha256.bc", "out")
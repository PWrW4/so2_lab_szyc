import os
import sys
import stat


if len(sys.argv) < 3:
    print("brak argumentow: folder_z folder_do")
    exit()

files_z = os.listdir(sys.argv[1])
print("Pliki w folderze z: " + str(files_z))

files_do = sys.argv[2]

for x in range(len(files_z)):
    path = os.path.join(sys.argv[1], files_z[x])
    if stat.S_IXUSR & os.stat(path)[stat.ST_MODE]:
        new_path = os.path.join(files_do,files_z[x])
        os.rename(path,new_path)
        print("Przenosze: " + str(files_z[x]))




    

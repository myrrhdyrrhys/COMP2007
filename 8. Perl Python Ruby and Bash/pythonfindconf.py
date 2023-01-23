import os
# traverse whole directory
for root, dirs, files in os.walk(r'/'):
    # select file name
    for file in files:
        # check the extension of files
        if file.endswith('.conf'):
            # print whole path of files
            print(os.path.join(root, file))
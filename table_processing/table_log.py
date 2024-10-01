# any(i for i in ["E","H","K","Q", "T", "W", "A"]):
import openpyxl
wookbook = openpyxl.load_workbook("test.xlsx")
worksheet = wookbook.active
for col in worksheet.iter_cols(1, worksheet.max_column):
    for row in range(0, worksheet.max_row):
        if col[row].value != None:
            print(col[row].value, end="\t\t\n")
    print()
    print('*************************'*10)
    print()
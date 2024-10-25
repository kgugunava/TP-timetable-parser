def xlsl_to_csv(file_name):
    from pathlib import Path
    try:
        file = Path(f'{file_name}')
        file.rename(file.with_suffix('.csv'))
        print("success")
    except:
        print("fail")

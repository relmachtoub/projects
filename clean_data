def clean_data(df):
    for n in df.columns:
        Q1 = df[n].quantile(0.25)
        Q3 = df[n].quantile(0.75)
        IQR = Q3-Q1
        LF = Q1 - IQR*1.5
        RF = Q3 + IQR*1.5
        index = df[(df[n] > RF) | (df[n] < LF)].index
        df.loc[index, n] = df[n].median()
    return df

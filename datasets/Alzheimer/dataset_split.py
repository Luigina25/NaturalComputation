import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler

if __name__ == "__main__":
    dataset = pd.read_csv("Alzheimer.csv")
    #print(dataset.shape)
    #print(dataset['target'].value_counts())
    columns = list(dataset.columns)
    scaler = MinMaxScaler()
    train, test = train_test_split(dataset, test_size=0.20, random_state=123)
    scaler = scaler.fit(train)
    train_sc = scaler.transform(train)
    test_sc = scaler.transform(test)
    pd.DataFrame(train_sc, columns=columns).to_csv('train.csv', index=False)
    pd.DataFrame(test_sc, columns=columns).to_csv('test.csv', index=False)

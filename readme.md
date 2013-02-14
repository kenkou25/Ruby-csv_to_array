# csv into array

CSVを配列に変換

現状、ただカンマでスプリットするだけ・・・

## 使い方

インスタンスの引数にファイルパスかファイルオブジェクトを渡す

<pre>
require 'csv_to_array'

csv_data = new CsvToArray('FilePath')
</pre>

インスタンスの`rows`フィールドに配列の配列形式で格納される

<pre>
csv_data.rows.each do |row|
  row.each do |col|
    p col
  end
end
</pre>

## Umm

テストのやり方が変？
アドバイスお願いします

## 以上
Git Ruby 学習中

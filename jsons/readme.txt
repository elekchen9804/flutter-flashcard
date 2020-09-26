https://www.jianshu.com/p/b852f9baa43e
在 root 執行 flutter packages pub run json_model 指令生成 model class
另外可以透過 watcher，在我們的根目錄下執行 flutter package pub run build_runner watch，監聽我們專案中的變化，並在需要時自動建構必要的文件

命名規則 為了避免json名稱 與 api內的名稱衝突,所以一律加入後綴名
1.主檔案名稱,後面以 Model 結尾
2.巢狀結構內的檔案名稱,以 Part 結尾

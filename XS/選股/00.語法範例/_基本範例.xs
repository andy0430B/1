{@type:filter|@guid:c80a30a98c4b4e61987e53c8df94dde2|@path:/00.語法範例/_基本範例}
// 選股範例程式
//

// 使用GetField來取得欄位的數值。請按F7或從「編輯」|「插入欄位」選項內啟動插入欄位的畫面。
// GetField函數的第一個參數是欄位名稱，例如 "每股稅後淨利(元)"，
// GetField函數的第二個參數是欄位的期別，例如 "Q"代表季資料，"M"代表月資料,"Y"代表年資料。
//
Value1 = GetField("每股稅後淨利(元)","Q");

// 如果GetField函數的第二個參數省略的話，則系統會根據執行這個腳本時所設定的頻率來決定
// 資料的期別。請務必注意引用腳本時必須設定正確的頻率，否則可能會遇到執行錯誤的情形。
//
Value2 = GetField("每股稅後淨利(元)");

// 可以使用任何XSScript的語法來做運算，如果股票符合預期的話請設定Ret = 1，以下面一行為例
// 這個腳本會選到最新一年每股稅後淨利 > 5元的股票
//
Ret = GetField("每股稅後淨利(元)","Y") > 5;

// ＊＊　在這個目錄內有更多的程式範本可以參考　＊＊
//
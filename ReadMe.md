# Khung một ứng dụng Swift đơn giản 
Ứng dụng này gồm một màn hình chính chứa danh sách link đến các màn hình con.
Ứng dụng khung này rất tiện dụng khi lập trình viên học một framework hoặc cần code một tập các bài tập lập trình để sau này xem lại hoặc tái sử dụng.

Cấu trúc menu phân cấp giúp lập trình viên lẫn người dùng dễ dàng hiểu và dùng ứng dụng.
Được viết bởi cuong@techmaster.vn


# Các file quan trọng
1. BootLogic.swift, hãy vào đây để sửa danh mục
2. ConsoleScreen.swift. Nếu bạn muốn tạo màn hình console đen xì phong cách hacker.
ConsoleScreen có 2 hàm viết ra màn hình như sau
```swift
func write(_ string: String)
func writeln (_ string: String)
```
3. MainScreen.swift màn hình giao diện chính kế thừa UITableViewController
4. Menu.swift tạo các loại menu khác nhau.

# Các bước sử dụng
1. Bạn chỉ cần có 4 file: BootLogic.swift, ConsoleScreen.swift, MainScreen.swift và Menu.swift
2. Import 4 file này vào dự án Swift
3. Sửa AppDelegate.swift như sau
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        BootLogic.boot(self.window!) //Gọi method boot của BootLogic
        self.window?.makeKeyAndVisible()
        return true
    }
```
4. Chỉnh sửa cấu hình project: vào target, chọn tab General, Deployment Info, Main Interface, xoá "Main" đi vì ta không cần boot vào Main storyboard nữa
5. Xoá Main.storyboard vì không cần dùng.
6. Tạo các screen kế thừa từ UIViewController (nhớ include XIB) hoặc ConsoleScreen.
Bạn cũng có tạo màn hình sử dụng giao diện StoryBoard
Menu(title: String, viewClass: String, storyBoard: String, storyBoardID: String)
Xem chi tiết ở file Menu.swift
```swift
init(title: String, viewClass: String, storyBoard: String, storyBoardID: String) {
```

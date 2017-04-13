#Objective-C项目中使用swift

### 1.Would you like to configure an Objective-C bridging header? YES

### 2.点击您的项目 target-> Build Setting 选显卡，找到BuidOptions->Always Embed Swift Standard Librares 置为YES
### 3.使用@objc作用在swift的class中，以供暴露class给OC使用

```swift
@objc class SwiftViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purpleColor()
    }
}
```

### 4.OC文件导入swift
>  target->Build Setting 选项卡。在 Swift Compiler – Code Generation 里找到 Objective-C Generated Interface Header Name：
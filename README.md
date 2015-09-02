# SYMaterialSegue

A custom storyboard segue like the Android Material Animation style.

## Screen Shot

![img](https://raw.githubusercontent.com/Sunnyyoung/SYMaterialSegue/master/ScreenShot/ScreenShot.gif)

## Pod

``` bash
platform :ios, '7.0'
pod 'SYMaterialSegue'
```

## Usage

1. Select the storyboard segue and set the custom class to `SYMaterialSegue`
2. Setup the `sourceButton` and `animationColor` in the `- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender` method.

![img](https://raw.githubusercontent.com/Sunnyyoung/SYMaterialSegue/master/ScreenShot/StepOne.png)

![img](https://raw.githubusercontent.com/Sunnyyoung/SYMaterialSegue/master/ScreenShot/StepTwo.png)

## License

The [MIT License](LICENSE).
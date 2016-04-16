import UIKit

public extension UIFont {
    
    public class func latoFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinRegular.rawValue, size: fontSize)!
    }
    
    public class func latoItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinItalic.rawValue, size: fontSize)!
    }

    public class func latoBlackFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinBlack.rawValue, size: fontSize)!
    }
    
    public class func latoBlackItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinBlackItalic.rawValue, size: fontSize)!
    }
    
    public class func latoBoldFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinBold.rawValue, size: fontSize)!
    }
    
    public class func latoBoldItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinBoldItalic.rawValue, size: fontSize)!
    }
    
    public class func latoHairlineFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinHairline.rawValue, size: fontSize)!
    }
    
    public class func latoHairlineItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinHairlineItalic.rawValue, size: fontSize)!
    }
    
    public class func latoHeavyFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinHeavy.rawValue, size: fontSize)!
    }
    
    public class func latoHeavyItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinHeavyItalic.rawValue, size: fontSize)!
    }

    public class func latoLightFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinLight.rawValue, size: fontSize)!
    }
    
    public class func latoLightItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinLightItalic.rawValue, size: fontSize)!
    }

    public class func latoMediumFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinMedium.rawValue, size: fontSize)!
    }
    
    public class func latoMediumItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinMediumItalic.rawValue, size: fontSize)!
    }

    public class func latoSemiboldFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinSemibold.rawValue, size: fontSize)!
    }
    
    public class func latoSemiboldItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinSemiboldItalic.rawValue, size: fontSize)!
    }

    public class func latoThinFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinThin.rawValue, size: fontSize)!
    }
    
    public class func latoThinItalicFontWithSize(fontSize: CGFloat) -> UIFont {
        FontLoader.loadFontIfNeeded()
        return UIFont(name: LatoFonts.LatoLatinThinItalic.rawValue, size: fontSize)!
    }

}

private enum LatoFonts: String {
    
    case FontFamilyName = "LatoLatin"
    
    case LatoLatinBlack = "LatoLatin-Black"
    case LatoLatinBlackItalic = "LatoLatin-BlackItalic"
    case LatoLatinBold = "LatoLatin-Bold"
    case LatoLatinBoldItalic = "LatoLatin-BoldItalic"
    case LatoLatinHairline = "LatoLatin-Hairline"
    case LatoLatinHairlineItalic = "LatoLatin-HairlineItalic"
    case LatoLatinHeavy = "LatoLatin-Heavy"
    case LatoLatinHeavyItalic = "LatoLatin-HeavyItalic"
    case LatoLatinItalic = "LatoLatin-Italic"
    case LatoLatinLight = "LatoLatin-Light"
    case LatoLatinLightItalic = "LatoLatin-LightItalic"
    case LatoLatinMedium = "LatoLatin-Medium"
    case LatoLatinMediumItalic = "LatoLatin-MediumItalic"
    case LatoLatinRegular = "LatoLatin-Regular"
    case LatoLatinSemibold = "LatoLatin-Semibold"
    case LatoLatinSemiboldItalic = "LatoLatin-SemiboldItalic"
    case LatoLatinThin = "LatoLatin-Thin"
    case LatoLatinThinItalic = "LatoLatin-ThinItalic"
    
    static let allValues = [
        LatoLatinBlack, LatoLatinBlackItalic,
        LatoLatinBold, LatoLatinBoldItalic,
        LatoLatinHairline, LatoLatinHairlineItalic,
        LatoLatinHeavy, LatoLatinHeavyItalic,
        LatoLatinRegular, LatoLatinItalic,
        LatoLatinLight, LatoLatinLightItalic,
        LatoLatinMedium, LatoLatinMediumItalic,
        LatoLatinSemibold, LatoLatinSemiboldItalic,
        LatoLatinThin, LatoLatinThinItalic
    ]
}

private class FontLoader {
    
    struct Static {
        static var onceToken : dispatch_once_t = 0
    }
    
    static func loadFontIfNeeded() {
        if (UIFont.fontNamesForFamilyName(LatoFonts.FontFamilyName.rawValue).count == 0) {
            
            dispatch_once(&Static.onceToken) {
                let bundle = NSBundle(forClass: FontLoader.self)
                var fontURL = NSURL()
                let identifier = bundle.bundleIdentifier
                
                for latoFont in LatoFonts.allValues {
                    if identifier?.hasPrefix("org.cocoapods") == true {
                        
                        fontURL = bundle.URLForResource(latoFont.rawValue, withExtension: "ttf", subdirectory: "LatoFontiOS.bundle")!
                    } else {
                        
                        fontURL = bundle.URLForResource(latoFont.rawValue, withExtension: "ttf")!
                    }
                    let data = NSData(contentsOfURL: fontURL)!
                    
                    let provider = CGDataProviderCreateWithCFData(data)
                    let font = CGFontCreateWithDataProvider(provider)!
                    
                    var error: Unmanaged<CFError>?
                    if !CTFontManagerRegisterGraphicsFont(font, &error) {
                        
                        let errorDescription: CFStringRef = CFErrorCopyDescription(error!.takeUnretainedValue())
                        let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
                        NSException(name: NSInternalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
                    }
                    
                }
            }
        }
    }
}

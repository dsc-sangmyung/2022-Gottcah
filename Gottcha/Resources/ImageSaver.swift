//
//  ImageSaver.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/26.
//

import UIKit

class ImageSaver: NSObject {
    func writeTophotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        print("저장되었습니다.")
    }
}

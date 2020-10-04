//
//  ImagePickerView.swift
//  Vridge
//
//  Created by Kang Mingu on 2020/10/04.
//

import UIKit

import YPImagePicker

struct ImagePicker {
    
    static let shared = ImagePicker()
    
    let imagePickerView: YPImagePickerConfiguration = {
        var config = YPImagePickerConfiguration()
        config.library.maxNumberOfItems = 3
        config.library.mediaType = .photo
        config.library.numberOfItemsInRow = 3
        config.library.skipSelectionsGallery = true
        config.screens = [.library, .photo]
        config.showsPhotoFilters = false
        config.startOnScreen = .library
        config.wordings.cameraTitle = "카메라"
        config.wordings.cancel = "취소"
        config.wordings.libraryTitle = "앨범"
        config.wordings.next = "선택 완료"
        return config
    }()
    
}

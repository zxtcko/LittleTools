//
//  Utils.swift
//  HelloCpp
//
//  Created by Young on 7/7/16.
//  Copyright © 2016 Young. All rights reserved.
//

import Foundation
import MobileCoreServices
import UIKit

class Utils: NSObject {
    
    
    /**
     通过参数生成httpBody
     
     - parameter parameters:  array参数
     - parameter filePathKey: 传入文件名称
     - parameter paths:       文件路径 let path1 = NSBundle.mainBundle().pathForResource("front", ofType: "jpg") as String!
     - parameter boundary:    generateBoundaryString
     
     - returns: http body
     */
    func createBodyWithParameters(parameters: [NSString: AnyObject]?, filePathKey: String?, paths: [String]?, boundary: String) -> NSData {
        let body = NSMutableData()
        
        if parameters != nil {
            for (key, value) in parameters! {
                body.appendString("--\(boundary)\r\n")
                body.appendString("Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n")
                body.appendString("\(value)\r\n")
            }
        }
        
        if paths != nil {
            for path in paths! {
                let url = NSURL(fileURLWithPath: path)
                let filename = url.lastPathComponent
                let data = NSData(contentsOfURL: url)!
                let mimetype = mimeTypeForPath(filePathKey!)
                
                body.appendString("--\(boundary)\r\n")
                body.appendString("Content-Disposition: form-data; name=\"\(filePathKey!)\"; filename=\"\(filename!)\"\r\n")
                body.appendString("Content-Type: \(mimetype)\r\n\r\n")
                body.appendData(data)
                body.appendString("\r\n")
            }
        }
        
        body.appendString("--\(boundary)--\r\n")
        return body
    }
    
    
    /**
     通过mainBundle中查找到文件来返回文件类型
     
     - parameter path: 文件名称
     
     - returns: 表单格式
     */
    func mimeTypeForPath(path: String) -> String {
        let url = NSURL(fileURLWithPath: path)
        let pathExtension = url.pathExtension
        
        if let uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension! as NSString, nil)?.takeRetainedValue() {
            if let mimetype = UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType)?.takeRetainedValue() {
                return mimetype as String
            }
        }
        return "application/octet-stream";
    }
    
    /**
     获取随机表单头string
     
     - returns: 随机string
     */
    func generateBoundaryString() -> String
    {
        print(NSUUID().UUIDString)
        return "Boundary-\(NSUUID().UUIDString)"
    }
    
}

extension NSMutableData {
    func appendString(string: String) {
        let data = string.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        appendData(data!)
    }
}
//
//  FileManagerBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 30/8/25.
//

import SwiftUI

struct FileManagerBootcamp: View {
    @State private var fileContent: String = ""
        @State private var message: String = ""

        let fileName = "example.txt"
        
        var body: some View {
            VStack(spacing: 20) {
                TextField("Enter some text", text: $fileContent)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Save to File") {
                    saveFile(content: fileContent)
                }
                .buttonStyle(.borderedProminent)
                
                Button("Read from File") {
                    if let text = readFile() {
                        message = "File Content: \(text)"
                    } else {
                        message = "File not found"
                    }
                }
                .buttonStyle(.bordered)
                
                Button("Delete File") {
                    deleteFile()
                    message = "File deleted"
                }
                .buttonStyle(.bordered)
                
                Text(message)
                    .padding()
                    .foregroundColor(.blue)
            }
            .padding()
        }
        
        
        
        func getFileURL() -> URL {
            let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
            return paths[0].appendingPathComponent(fileName)
        }
        
        func saveFile(content: String) {
            let url = getFileURL()
            do {
                try content.write(to: url, atomically: true, encoding: .utf8)
                message = "File saved successfully"
            } catch {
                message = "Error saving file: \(error.localizedDescription)"
            }
        }
        
        func readFile() -> String? {
            let url = getFileURL()
            do {
                return try String(contentsOf: url, encoding: .utf8)
            } catch {
                return nil
            }
        }
        
        func deleteFile() {
            let url = getFileURL()
            do {
                try FileManager.default.removeItem(at: url)
            } catch {
                message = "Error deleting file: \(error.localizedDescription)"
            }
        }
}

#Preview {
    FileManagerBootcamp()
}

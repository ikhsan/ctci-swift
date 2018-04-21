import Foundation

public func encode(xml: String) -> String {
    guard let doc = try? XMLDocument(xmlString: xml), 
        let root = doc.rootElement() 
        else { return "" }
    return encode(node: root)
}

private let tags: [String : String] = [
    "family" : "1",
    "person" : "2",
    "firstName" : "3",
    "lastName" : "4",
    "state" : "5",
]

private func encode(node: XMLNode) -> String {
    if node.kind == .text {
        return node.stringValue ?? ""
    }

    guard let element = node as? XMLElement,
        let name = element.name,
        let tag = tags[name]
        else { return "" }

    let attributes = (element.attributes ?? []).reduce(into: "") { memo, attr in
        let key = attr.name ?? ""
        let value = attr.stringValue ?? ""

        if let tag = tags[key] {
            memo += "\(tag) \(value) "
        }        
    }

    let children = element.children ?? []    

    var result = "\(tag) \(attributes)0"
    for child in children {
        result += " " + encode(node: child)
    }
    result += " 0"

    return result
}
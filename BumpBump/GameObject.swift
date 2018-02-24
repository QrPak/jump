
import SceneKit

protocol GameObject {
    func rootNode() -> SCNNode
    func update(timeSinceLastUpdate: TimeInterval)
}

extension GameObject {
    func addToNode(baseNode: SCNNode) {
        let node = self.rootNode()
        if node.parent != nil {
            node.removeFromParentNode()
        }
        baseNode.addChildNode(node)
    }

    func destroy() {
        let node = self.rootNode()
        if node.parent != nil {
            node.removeFromParentNode()
        }
    }
}

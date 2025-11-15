//
//  FloatingPanel.swift
//  floating_panel
//

import AppKit

class FloatingPanel: NSPanel {

    init(size: NSSize) {
        super.init(
            contentRect: NSRect(origin: .zero, size: size),
            styleMask: [.borderless, .nonactivatingPanel, .titled, .resizable],
            backing: .buffered,
            defer: false
        )

        setupWindow()
        setupContentView(size: size)
    }

    private func setupWindow() {
        backgroundColor = NSColor.windowBackgroundColor
        isOpaque = true
        hasShadow = true
        level = .floating
        isMovableByWindowBackground = true
        titlebarAppearsTransparent = true
        titleVisibility = .hidden

        collectionBehavior = [
            .canJoinAllSpaces,
            .stationary,
            .fullScreenAuxiliary
        ]
    }

    private func setupContentView(size: NSSize) {
        let view = NSView(frame: NSRect(origin: .zero, size: size))
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor

        self.contentView = view

        // Position at bottom-right of screen with padding
        if let screen = NSScreen.main {
            let padding: CGFloat = 20
            let screenFrame = screen.visibleFrame
            let xPosition = screenFrame.maxX - size.width - padding
            let yPosition = screenFrame.minY + padding

            setFrameOrigin(NSPoint(x: xPosition, y: yPosition))
        }
    }

    func updateSize(_ size: NSSize) {
        setContentSize(size)
    }

    func updatePosition(_ position: NSPoint) {
        setFrameOrigin(position)
    }
}

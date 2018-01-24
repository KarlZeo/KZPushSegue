import Cocoa
import QuartzCore

class KZPushAnimator: NSObject, NSViewControllerPresentationAnimator {
    let kPushAnimationDuration = 0.3
    func animatePresentation(of viewController: NSViewController, from fromViewController: NSViewController) {
        viewController.view.frame = NSMakeRect(NSWidth(fromViewController.view.frame),0,NSWidth(fromViewController.view.frame),NSHeight(fromViewController.view.frame))
        viewController.view.autoresizingMask = [.width, .height]
        fromViewController.view.addSubview(viewController.view)
        let destinationRect: NSRect = fromViewController.view.frame
        NSAnimationContext.runAnimationGroup({(_ context: NSAnimationContext) -> Void in
            context.duration = kPushAnimationDuration
            context.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            viewController.view.animator().frame = destinationRect
        }, completionHandler: nil)
    }
    func animateDismissal(of viewController: NSViewController, from fromViewController: NSViewController) {
        let destinationRect: NSRect = NSMakeRect(NSWidth(fromViewController.view.frame),0,NSWidth(fromViewController.view.frame),NSHeight(fromViewController.view.frame))
        NSAnimationContext.runAnimationGroup({(_ context: NSAnimationContext) -> Void in
            context.duration = kPushAnimationDuration
            context.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
            viewController.view.animator().frame = destinationRect
        }, completionHandler: {() -> Void in
            viewController.view.removeFromSuperview()
        })
    }
}

class KZPushSegue: NSStoryboardSegue {
    override func perform() {
        let vc = self.sourceController as! NSViewController
        let animator = KZPushAnimator()
        vc.presentViewController(self.destinationController as! NSViewController, animator: animator)
    }
}

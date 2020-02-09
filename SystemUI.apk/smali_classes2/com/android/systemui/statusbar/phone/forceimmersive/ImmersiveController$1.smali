.class Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;
.super Ljava/lang/Object;
.source "ImmersiveController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleActionDown(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onActionMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onActionSwipeUpAndHold(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getLongPressAction()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getLongPressAction()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onActionUp(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleActionUpAndMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    return-void
.end method

.method public onCancel(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onFollowingUpMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleActionUpAndMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    return-void
.end method

.method public onSwipe(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleSwipe(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    return-void
.end method

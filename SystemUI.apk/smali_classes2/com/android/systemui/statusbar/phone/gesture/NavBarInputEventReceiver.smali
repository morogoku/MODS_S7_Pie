.class public Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "NavBarInputEventReceiver.java"


# instance fields
.field private final mFSM:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;->mFSM:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 4

    const-class v0, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;->mFSM:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;->handleEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

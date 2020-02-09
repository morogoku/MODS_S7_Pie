.class final Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.super Ljava/lang/Object;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayMagnifierPolicy"
.end annotation


# static fields
.field private static final LONG_HOVER_RECOGNITION_TIME:I = 0x3e8

.field private static final MESSAGE_MAGNIFIER_START:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsMagnifying:Z

.field private mLatestMotionEvent:Landroid/view/MotionEvent;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    new-instance p1, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public isMagnifying()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2f

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    :pswitch_b
    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overlay Magnifier end!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :pswitch_15
    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_32

    :cond_2f
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    nop

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x9
        :pswitch_15
        :pswitch_b
    .end packed-switch
.end method

.method public stopMagnifier()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    return-void
.end method

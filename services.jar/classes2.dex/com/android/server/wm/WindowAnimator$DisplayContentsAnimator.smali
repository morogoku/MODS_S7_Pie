.class Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayContentsAnimator"
.end annotation


# instance fields
.field mMultiWindowFreezeAnimation:Lcom/android/server/wm/MultiWindowFreezeAnimation;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowFreezeAnimation:Lcom/android/server/wm/MultiWindowFreezeAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    return-void
.end method

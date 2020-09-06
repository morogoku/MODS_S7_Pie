.class public interface abstract Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;
.super Ljava/lang/Object;
.source "SamsungWindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungWindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SamsungWindowManagerFuncs"
.end annotation


# static fields
.field public static final LID_ABSENT:I = -0x1

.field public static final LID_CLOSED:I = 0x0

.field public static final LID_OPEN:I = 0x1

.field public static final PEN_ABSENT:I = -0x1

.field public static final PEN_ATTACHED:I = 0x1

.field public static final PEN_DETACHED:I


# virtual methods
.method public abstract getDefaultDisplayHeight()I
.end method

.method public abstract getDefaultDisplayWidth()I
.end method

.method public abstract getDisplayCutoutLw(I)Landroid/view/DisplayCutout;
.end method

.method public abstract getFocusedTaskIdLw()I
.end method

.method public abstract getFocusedWindowInfoForScreenshotLw(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPenState()I
.end method

.method public abstract hasOneHandOpSpec()Z
.end method

.method public abstract isVSVisible()Z
.end method

.method public abstract notifyInitialDisplaySizeForAspectRatio(IIII)V
.end method

.method public abstract reconfigureDisplay(I)V
.end method

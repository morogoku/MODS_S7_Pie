.class Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStreamState"
.end annotation


# instance fields
.field private mDeviceId:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    return-void
.end method


# virtual methods
.method public deviceIdValid()Z
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessScroll()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateDeviceId(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    const/4 v0, 0x1

    return v0
.end method
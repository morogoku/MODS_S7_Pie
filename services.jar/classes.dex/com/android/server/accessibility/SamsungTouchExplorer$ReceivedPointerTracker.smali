.class Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    return-void
.end method

.method private findPrimaryPointerId()I
    .registers 9

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    :goto_8
    if-lez v3, :cond_1d

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v5, v5, v4

    cmp-long v7, v5, v1

    if-gez v7, :cond_1c

    move-wide v1, v5

    move v0, v4

    :cond_1c
    goto :goto_8

    :cond_1d
    return v0
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v0, :cond_34

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_34
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :pswitch_16
    goto :goto_37

    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_37

    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_37

    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_37

    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    nop

    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_31

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

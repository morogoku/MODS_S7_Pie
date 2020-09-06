.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .registers 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .registers 10

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    int-to-double v4, p3

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .registers 26

    sub-float v2, p4, p0

    sub-float v3, p5, p1

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-nez v5, :cond_f

    cmpl-float v5, v3, v4

    if-nez v5, :cond_f

    return v6

    :cond_f
    float-to-double v7, v2

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v5, v7

    cmpl-float v7, v5, v4

    if-lez v7, :cond_1d

    div-float v7, v2, v5

    goto :goto_1e

    :cond_1d
    move v7, v2

    :goto_1e
    cmpl-float v8, v5, v4

    if-lez v8, :cond_25

    div-float v8, v3, v5

    goto :goto_26

    :cond_25
    move v8, v3

    :goto_26
    sub-float v11, p6, p2

    sub-float v6, p7, p3

    cmpl-float v13, v11, v4

    if-nez v13, :cond_34

    cmpl-float v13, v6, v4

    if-nez v13, :cond_34

    const/4 v4, 0x1

    return v4

    :cond_34
    move v14, v5

    float-to-double v4, v11

    float-to-double v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_44

    div-float v4, v11, v0

    goto :goto_45

    :cond_44
    move v4, v11

    :goto_45
    cmpl-float v1, v0, v1

    if-lez v1, :cond_4c

    div-float v1, v6, v0

    goto :goto_4d

    :cond_4c
    move v1, v6

    :goto_4d
    mul-float v5, v7, v4

    mul-float v13, v8, v1

    add-float/2addr v5, v13

    cmpg-float v15, v5, p8

    if-gez v15, :cond_58

    const/4 v12, 0x0

    return v12

    :cond_58
    const/4 v12, 0x1

    return v12
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .registers 5

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0

    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

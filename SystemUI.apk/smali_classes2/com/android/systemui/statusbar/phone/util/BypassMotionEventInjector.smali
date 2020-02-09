.class public Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;
.super Ljava/lang/Object;
.source "BypassMotionEventInjector.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method


# virtual methods
.method public byPassRawEvent(Landroid/view/MotionEvent;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v18

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v19

    const/4 v14, 0x0

    move v2, v14

    :goto_0
    if-ge v2, v15, :cond_0

    aget-object v3, v18, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v3, v19, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v3, "BypassMotionEventInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byPassRawEvent occur rawEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    const/high16 v8, 0x20000000

    or-int v21, v7, v8

    move v7, v15

    move-object/from16 v8, v19

    move-object/from16 v9, v18

    move/from16 v14, v16

    move/from16 v22, v15

    move/from16 v15, v17

    move/from16 v16, v20

    move/from16 v17, v21

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

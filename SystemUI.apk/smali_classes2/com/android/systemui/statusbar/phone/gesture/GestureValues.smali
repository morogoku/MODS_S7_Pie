.class public Lcom/android/systemui/statusbar/phone/gesture/GestureValues;
.super Ljava/lang/Object;
.source "GestureValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static GESTURE_CENTER:I

.field public static GESTURE_EXTRA_HINT_AREA:Z

.field public static GESTURE_FLOATING_RESTART:I

.field public static GESTURE_FLOATING_ROTATION:I

.field public static GESTURE_LEFT:I

.field public static GESTURE_RIGHT:I

.field public static GESTURE_SIDE_LEFT:I

.field public static GESTURE_SIDE_RIGHT:I

.field public static ONE_HAND_MODE_SIDE_MARGIN:F

.field public static REQUESTED_HOME:I

.field public static REQUESTED_RECENT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE_EXTRA_AREA:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_EXTRA_HINT_AREA:Z

    sput v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    const/4 v1, 0x2

    sput v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    const/4 v2, 0x3

    sput v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_SIDE_LEFT:I

    const/4 v2, 0x4

    sput v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_SIDE_RIGHT:I

    const/4 v2, 0x5

    sput v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_FLOATING_ROTATION:I

    const/4 v2, 0x6

    sput v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_FLOATING_RESTART:I

    sput v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_HOME:I

    sput v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_RECENT:I

    const v0, 0x3de147ae    # 0.11f

    sput v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->ONE_HAND_MODE_SIDE_MARGIN:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

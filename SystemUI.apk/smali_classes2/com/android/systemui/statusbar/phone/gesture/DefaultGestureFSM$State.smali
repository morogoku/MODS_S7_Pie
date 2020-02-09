.class final enum Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;
.super Ljava/lang/Enum;
.source "DefaultGestureFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum CANCELED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum DETECTED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum FOLLOWUP_DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum IDLE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

.field public static final enum SWIPE_UP_AND_HOLD:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->IDLE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "DETECTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "DETECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "FOLLOWUP_DETECTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->FOLLOWUP_DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "SWIPE_UP_AND_HOLD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->SWIPE_UP_AND_HOLD:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "CANCELED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const-string v1, "CANCELED_WITHOUT_RESTORE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->IDLE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->FOLLOWUP_DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->SWIPE_UP_AND_HOLD:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    return-object v0
.end method

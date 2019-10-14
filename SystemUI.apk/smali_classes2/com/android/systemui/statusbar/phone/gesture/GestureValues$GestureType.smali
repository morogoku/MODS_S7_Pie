.class public final enum Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;
.super Ljava/lang/Enum;
.source "GestureValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/gesture/GestureValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

.field public static final enum Horizontal:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

.field public static final enum None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

.field public static final enum Vertical:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    const-string v1, "Vertical"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Vertical:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    const-string v1, "Horizontal"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Horizontal:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Vertical:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Horizontal:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->$VALUES:[Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->$VALUES:[Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    return-object v0
.end method
